
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef void* uint32_t ;
typedef scalar_t__ time_t ;
struct elfcopy {scalar_t__ otf; int oem; } ;
typedef int psh ;
typedef int poh ;
typedef int pch ;
struct TYPE_20__ {int d_buf; } ;
struct TYPE_19__ {scalar_t__ e_entry; } ;
struct TYPE_18__ {scalar_t__ sh_type; int sh_flags; int sh_size; scalar_t__ sh_addr; int sh_name; } ;
struct TYPE_17__ {int pb_align; int * pb_buf; void* pb_size; scalar_t__ pb_off; } ;
struct TYPE_16__ {int oh_secalign; int oh_filealign; int sh_char; void* sh_rawsize; int sh_virtsize; scalar_t__ sh_addr; int sh_name; int oh_datasize; int oh_bsssize; scalar_t__ oh_database; void* oh_textsize; void* oh_textbase; void* oh_entry; int oh_subsystem; void* ch_timestamp; int ch_machine; } ;
typedef TYPE_1__ PE_SecHdr ;
typedef int PE_Scn ;
typedef TYPE_1__ PE_OptHdr ;
typedef scalar_t__ PE_Object ;
typedef TYPE_1__ PE_CoffHdr ;
typedef TYPE_4__ PE_Buffer ;
typedef int PE ;
typedef TYPE_5__ GElf_Shdr ;
typedef TYPE_6__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef TYPE_7__ Elf_Data ;
typedef int Elf ;


 int ELF_C_READ ;


 scalar_t__ ETF_EFI ;
 int EXIT_FAILURE ;
 int IMAGE_FILE_MACHINE_AMD64 ;
 int IMAGE_FILE_MACHINE_I386 ;
 int IMAGE_FILE_MACHINE_UNKNOWN ;
 int IMAGE_SCN_CNT_CODE ;
 int IMAGE_SCN_CNT_INITIALIZED_DATA ;
 int IMAGE_SCN_CNT_UNINITIALIZED_DATA ;
 int IMAGE_SCN_MEM_DISCARDABLE ;
 int IMAGE_SCN_MEM_EXECUTE ;
 int IMAGE_SCN_MEM_READ ;
 int IMAGE_SCN_MEM_WRITE ;
 int IMAGE_SUBSYSTEM_EFI_APPLICATION ;
 int PE_C_WRITE ;
 scalar_t__ PE_O_PE32 ;
 scalar_t__ PE_O_PE32P ;
 int SHF_ALLOC ;
 int SHF_EXECINSTR ;
 int SHF_WRITE ;
 scalar_t__ SHT_NOBITS ;
 int * calloc (int,void*) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_7__* elf_getdata (int *,int *) ;
 scalar_t__ elf_getshstrndx (int *,size_t*) ;
 int * elf_nextscn (int *,int *) ;
 char* elf_strptr (int *,size_t,int ) ;
 scalar_t__ elftc_timestamp (scalar_t__*) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int * gelf_getehdr (int *,TYPE_6__*) ;
 int * gelf_getshdr (int *,TYPE_5__*) ;
 int memcpy (int *,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int pe_finish (int *) ;
 int * pe_init (int,int ,scalar_t__) ;
 TYPE_4__* pe_newbuffer (int *) ;
 int * pe_newscn (int *) ;
 scalar_t__ pe_update (int *) ;
 scalar_t__ pe_update_coff_header (int *,TYPE_1__*) ;
 scalar_t__ pe_update_opt_header (int *,TYPE_1__*) ;
 scalar_t__ pe_update_section_header (int *,TYPE_1__*) ;
 void* roundup (int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strncpy (int ,char const*,int) ;
 int warn (char*) ;
 int warnx (char*,int ) ;

void
create_pe(struct elfcopy *ecp, int ifd, int ofd)
{
 Elf *e;
 Elf_Scn *scn;
 Elf_Data *d;
 GElf_Ehdr eh;
 GElf_Shdr sh;
 PE *pe;
 PE_Scn *ps;
 PE_SecHdr psh;
 PE_CoffHdr pch;
 PE_OptHdr poh;
 PE_Object po;
 PE_Buffer *pb;
 const char *name;
 size_t indx;
 time_t timestamp;
 int elferr;

 if (ecp->otf == ETF_EFI || ecp->oem == 128)
  po = PE_O_PE32P;
 else
  po = PE_O_PE32;

 if ((e = elf_begin(ifd, ELF_C_READ, ((void*)0))) == ((void*)0))
  errx(EXIT_FAILURE, "elf_begin() failed: %s",
      elf_errmsg(-1));

 if (gelf_getehdr(e, &eh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getehdr() failed: %s",
      elf_errmsg(-1));

 if (elf_getshstrndx(e, &indx) == 0)
  errx(EXIT_FAILURE, "elf_getshstrndx() failed: %s",
      elf_errmsg(-1));

 if ((pe = pe_init(ofd, PE_C_WRITE, po)) == ((void*)0))
  err(EXIT_FAILURE, "pe_init() failed");


 memset(&pch, 0, sizeof(pch));
 switch (ecp->oem) {
 case 129:
  pch.ch_machine = IMAGE_FILE_MACHINE_I386;
  break;
 case 128:
  pch.ch_machine = IMAGE_FILE_MACHINE_AMD64;
  break;
 default:
  pch.ch_machine = IMAGE_FILE_MACHINE_UNKNOWN;
  break;
 }
 if (elftc_timestamp(&timestamp) != 0)
  err(EXIT_FAILURE, "elftc_timestamp");
 pch.ch_timestamp = (uint32_t) timestamp;
 if (pe_update_coff_header(pe, &pch) < 0)
  err(EXIT_FAILURE, "pe_update_coff_header() failed");


 memset(&poh, 0, sizeof(poh));
 if (ecp->otf == ETF_EFI)
  poh.oh_subsystem = IMAGE_SUBSYSTEM_EFI_APPLICATION;
 poh.oh_entry = (uint32_t) eh.e_entry;







 poh.oh_secalign = 0x1000;
 poh.oh_filealign = 0x200;


 scn = ((void*)0);
 while ((scn = elf_nextscn(e, scn)) != ((void*)0)) {





  if (gelf_getshdr(scn, &sh) == ((void*)0)) {
   warnx("gelf_getshdr() failed: %s", elf_errmsg(-1));
   (void) elf_errno();
   continue;
  }
  if ((name = elf_strptr(e, indx, sh.sh_name)) ==
      ((void*)0)) {
   warnx("elf_strptr() failed: %s", elf_errmsg(-1));
   (void) elf_errno();
   continue;
  }


  if (strcmp(name, ".shstrtab") == 0 ||
      strcmp(name, ".symtab") == 0 ||
      strcmp(name, ".strtab") == 0)
   continue;

  if ((d = elf_getdata(scn, ((void*)0))) == ((void*)0)) {
   warnx("elf_getdata() failed: %s", elf_errmsg(-1));
   (void) elf_errno();
   continue;
  }

  if (strcmp(name, ".text") == 0) {
   poh.oh_textbase = (uint32_t) sh.sh_addr;
   poh.oh_textsize = (uint32_t) roundup(sh.sh_size,
       poh.oh_filealign);
  } else {
   if (po == PE_O_PE32 && strcmp(name, ".data") == 0)
    poh.oh_database = sh.sh_addr;
   if (sh.sh_type == SHT_NOBITS)
    poh.oh_bsssize += (uint32_t)
        roundup(sh.sh_size, poh.oh_filealign);
   else if (sh.sh_flags & SHF_ALLOC)
    poh.oh_datasize += (uint32_t)
        roundup(sh.sh_size, poh.oh_filealign);
  }





  if ((ps = pe_newscn(pe)) == ((void*)0)) {
   warn("pe_newscn() failed");
   continue;
  }







  memset(&psh, 0, sizeof(psh));
  strncpy(psh.sh_name, name, sizeof(psh.sh_name));
  psh.sh_addr = sh.sh_addr;
  psh.sh_virtsize = sh.sh_size;
  if (sh.sh_type != SHT_NOBITS)
   psh.sh_rawsize = roundup(sh.sh_size, poh.oh_filealign);
  else
   psh.sh_char |= IMAGE_SCN_CNT_UNINITIALIZED_DATA;




  psh.sh_char |= IMAGE_SCN_MEM_READ;
  if (sh.sh_flags & SHF_WRITE)
   psh.sh_char |= IMAGE_SCN_MEM_WRITE;
  if (sh.sh_flags & SHF_EXECINSTR)
   psh.sh_char |= IMAGE_SCN_MEM_EXECUTE |
       IMAGE_SCN_CNT_CODE;
  if ((sh.sh_flags & SHF_ALLOC) && (psh.sh_char & 0xF0) == 0)
   psh.sh_char |= IMAGE_SCN_CNT_INITIALIZED_DATA;


  if (strcmp(name, ".reloc") == 0)
   psh.sh_char |= IMAGE_SCN_MEM_DISCARDABLE;

  if (pe_update_section_header(ps, &psh) < 0) {
   warn("pe_update_section_header() failed");
   continue;
  }


  if ((pb = pe_newbuffer(ps)) == ((void*)0)) {
   warn("pe_newbuffer() failed");
   continue;
  }
  pb->pb_align = 1;
  pb->pb_off = 0;
  if (sh.sh_type != SHT_NOBITS) {
   pb->pb_size = roundup(sh.sh_size, poh.oh_filealign);
   if ((pb->pb_buf = calloc(1, pb->pb_size)) == ((void*)0)) {
    warn("calloc failed");
    continue;
   }
   memcpy(pb->pb_buf, d->d_buf, sh.sh_size);
  }
 }
 elferr = elf_errno();
 if (elferr != 0)
  warnx("elf_nextscn() failed: %s", elf_errmsg(elferr));


 if (pe_update_opt_header(pe, &poh) < 0)
  err(EXIT_FAILURE, "pe_update_opt_header() failed");


 if (pe_update(pe) < 0)
  err(EXIT_FAILURE, "pe_update() failed");

 pe_finish(pe);
 elf_end(e);
}
