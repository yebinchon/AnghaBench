
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct section {int off; } ;
struct elfcopy {int eout; TYPE_2__* shstrtab; int flags; int oem; int oed; int oec; } ;
struct TYPE_6__ {int * os; scalar_t__ off; } ;
struct TYPE_5__ {int e_shoff; scalar_t__ e_entry; int e_type; int e_machine; int * e_ident; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int FILE ;


 size_t EI_CLASS ;
 size_t EI_DATA ;
 size_t EI_OSABI ;
 int ELFOSABI_NONE ;
 int ELF_C_WRITE ;
 int ELF_T_EHDR ;
 int ET_REL ;
 int EV_CURRENT ;
 int EXIT_FAILURE ;
 int RELOCATABLE ;
 int _DATA_BUFSZ ;
 int _LINE_BUFSZ ;
 int append_data (struct section*,int *,size_t) ;
 int dup (int) ;
 int elf_errmsg (int) ;
 int * elf_newscn (int ) ;
 scalar_t__ elf_update (int ,int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ ferror (int *) ;
 int * fgets (char*,int,int *) ;
 int finalize_data_section (struct section*) ;
 int free_elf (struct elfcopy*) ;
 scalar_t__ gelf_fsize (int ,int ,int,int ) ;
 int * gelf_getehdr (int ,TYPE_1__*) ;
 int * gelf_newehdr (int ,int ) ;
 scalar_t__ gelf_update_ehdr (int ,TYPE_1__*) ;
 scalar_t__ ihex_read (char*,char*,scalar_t__*,scalar_t__*,int *,size_t*) ;
 int init_shstrtab (struct elfcopy*) ;
 struct section* insert_shtab (struct elfcopy*,int) ;
 int insert_to_sec_list (struct elfcopy*,TYPE_2__*,int) ;
 struct section* new_data_section (struct elfcopy*,int,scalar_t__,scalar_t__) ;
 int resync_sections (struct elfcopy*) ;
 int update_shdr (struct elfcopy*,int ) ;
 int warn (char*) ;
 int warnx (char*) ;

void
create_elf_from_ihex(struct elfcopy *ecp, int ifd)
{
 char line[_LINE_BUFSZ];
 uint8_t data[_DATA_BUFSZ];
 GElf_Ehdr oeh;
 struct section *s, *shtab;
 FILE *ifp;
 uint64_t addr, addr_base, entry, num, off, rec_addr, sec_addr;
 size_t sz;
 int _ifd, first, sec_index;
 char type;

 if ((_ifd = dup(ifd)) < 0)
  err(EXIT_FAILURE, "dup failed");
 if ((ifp = fdopen(_ifd, "r")) == ((void*)0))
  err(EXIT_FAILURE, "fdopen failed");


 if (gelf_newehdr(ecp->eout, ecp->oec) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_newehdr failed: %s",
      elf_errmsg(-1));
 if (gelf_getehdr(ecp->eout, &oeh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getehdr() failed: %s",
      elf_errmsg(-1));


 oeh.e_ident[EI_CLASS] = ecp->oec;
 oeh.e_ident[EI_DATA] = ecp->oed;




 oeh.e_ident[EI_OSABI] = ELFOSABI_NONE;
 oeh.e_machine = ecp->oem;
 oeh.e_type = ET_REL;
 oeh.e_entry = 0;

 ecp->flags |= RELOCATABLE;


 init_shstrtab(ecp);
 ecp->shstrtab->off = 0;


 off = gelf_fsize(ecp->eout, ELF_T_EHDR, 1, EV_CURRENT);
 if (off == 0)
  errx(EXIT_FAILURE, "gelf_fsize() failed: %s", elf_errmsg(-1));


 s = ((void*)0);
 first = 1;
 sec_index = 1;
 addr_base = rec_addr = sec_addr = entry = 0;
 while (fgets(line, _LINE_BUFSZ, ifp) != ((void*)0)) {
  if (line[0] == '\r' || line[0] == '\n')
   continue;
  if (line[0] != ':') {
   warnx("Invalid ihex record");
   continue;
  }
  if (ihex_read(line, &type, &addr, &num, data, &sz) < 0) {
   warnx("Invalid ihex record or mismatched checksum");
   continue;
  }
  switch (type) {
  case '0':

   if (sz == 0)
    break;
   rec_addr = addr_base + addr;
   if (first || sec_addr != rec_addr) {
    if (s != ((void*)0))
     finalize_data_section(s);
    s = new_data_section(ecp, sec_index, off,
        rec_addr);
    if (s == ((void*)0)) {
     warnx("new_data_section failed");
     break;
    }
    sec_index++;
    sec_addr = rec_addr;
    first = 0;
   }
   append_data(s, data, sz);
   off += sz;
   sec_addr += sz;
   break;
  case '1':

   goto done;
  case '2':

   addr_base = addr << 4;
   break;
  case '3':

   break;
  case '4':

   addr_base = num << 16;
   break;
  case '5':

   entry = num;
   break;
  default:
   break;
  }
 }
done:
 if (s != ((void*)0))
  finalize_data_section(s);
 if (ferror(ifp))
  warn("fgets failed");
 fclose(ifp);


 if ((ecp->shstrtab->os = elf_newscn(ecp->eout)) == ((void*)0))
  errx(EXIT_FAILURE, "elf_newscn failed: %s",
      elf_errmsg(-1));
 insert_to_sec_list(ecp, ecp->shstrtab, 1);


 shtab = insert_shtab(ecp, 1);


 oeh.e_entry = entry;





 if (gelf_update_ehdr(ecp->eout, &oeh) == 0)
  errx(EXIT_FAILURE, "gelf_update_ehdr() failed: %s",
      elf_errmsg(-1));


 update_shdr(ecp, 0);


 if (gelf_getehdr(ecp->eout, &oeh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getehdr() failed: %s",
      elf_errmsg(-1));


 resync_sections(ecp);


 oeh.e_shoff = shtab->off;


 if (gelf_update_ehdr(ecp->eout, &oeh) == 0)
  errx(EXIT_FAILURE, "gelf_update_ehdr() failed: %s",
      elf_errmsg(-1));


 if (elf_update(ecp->eout, ELF_C_WRITE) < 0)
  errx(EXIT_FAILURE, "elf_update() failed: %s",
      elf_errmsg(-1));


 free_elf(ecp);
}
