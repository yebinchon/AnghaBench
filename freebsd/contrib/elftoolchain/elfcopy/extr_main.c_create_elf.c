
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct section {int off; } ;
struct elfcopy {int flags; scalar_t__ iec; scalar_t__ oec; scalar_t__ oed; int abi; scalar_t__ strip; scalar_t__ ophnum; scalar_t__ change_addr; scalar_t__ change_start; int eout; int set_start; int v_symop; int * prefix_sym; int * secndx; int ein; } ;
struct TYPE_4__ {scalar_t__* e_ident; scalar_t__ e_type; scalar_t__ e_phoff; int e_entry; int e_shoff; int e_version; int e_machine; int e_flags; } ;
typedef TYPE_1__ GElf_Ehdr ;


 int DISCARD_LLABEL ;
 int DISCARD_LOCAL ;
 int DYNAMIC ;
 size_t EI_CLASS ;
 size_t EI_DATA ;
 size_t EI_OSABI ;
 scalar_t__ ELFCLASSNONE ;
 scalar_t__ ELFDATANONE ;
 int ELFOSABI_FREEBSD ;
 int ELF_C_WRITE ;
 int ELF_T_EHDR ;
 scalar_t__ ET_DYN ;
 scalar_t__ ET_EXEC ;
 scalar_t__ ET_REL ;
 int EV_CURRENT ;
 int EXECUTABLE ;
 int EXIT_FAILURE ;
 int LOCALIZE_HIDDEN ;
 int RELOCATABLE ;
 int SET_START ;
 int STAILQ_EMPTY (int *) ;
 scalar_t__ STRIP_DEBUG ;
 scalar_t__ STRIP_UNNEEDED ;
 int SYMTAB_EXIST ;
 int SYMTAB_INTACT ;
 int WEAKEN_ALL ;
 int adjust_addr (struct elfcopy*) ;
 int * calloc (size_t,int) ;
 int copy_content (struct elfcopy*) ;
 int copy_phdr (struct elfcopy*) ;
 int create_scn (struct elfcopy*) ;
 int create_symtab (struct elfcopy*) ;
 int elf_errmsg (int) ;
 int elf_getshnum (int ,size_t*) ;
 scalar_t__ elf_update (int ,int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,...) ;
 int free_elf (struct elfcopy*) ;
 scalar_t__ gelf_fsize (int ,int ,int,int ) ;
 scalar_t__ gelf_getclass (int ) ;
 int * gelf_getehdr (int ,TYPE_1__*) ;
 int * gelf_newehdr (int ,scalar_t__) ;
 scalar_t__ gelf_update_ehdr (int ,TYPE_1__*) ;
 struct section* insert_shtab (struct elfcopy*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int resync_sections (struct elfcopy*) ;
 int setup_phdr (struct elfcopy*) ;
 int update_shdr (struct elfcopy*,int) ;

void
create_elf(struct elfcopy *ecp)
{
 struct section *shtab;
 GElf_Ehdr ieh;
 GElf_Ehdr oeh;
 size_t ishnum;

 ecp->flags |= SYMTAB_INTACT;
 ecp->flags &= ~SYMTAB_EXIST;


 if (gelf_getehdr(ecp->ein, &ieh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getehdr() failed: %s",
      elf_errmsg(-1));
 if ((ecp->iec = gelf_getclass(ecp->ein)) == ELFCLASSNONE)
  errx(EXIT_FAILURE, "getclass() failed: %s",
      elf_errmsg(-1));

 if (ecp->oec == ELFCLASSNONE)
  ecp->oec = ecp->iec;
 if (ecp->oed == ELFDATANONE)
  ecp->oed = ieh.e_ident[EI_DATA];

 if (gelf_newehdr(ecp->eout, ecp->oec) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_newehdr failed: %s",
      elf_errmsg(-1));
 if (gelf_getehdr(ecp->eout, &oeh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getehdr() failed: %s",
      elf_errmsg(-1));

 memcpy(oeh.e_ident, ieh.e_ident, sizeof(ieh.e_ident));
 oeh.e_ident[EI_CLASS] = ecp->oec;
 oeh.e_ident[EI_DATA] = ecp->oed;
 if (ecp->abi != -1)
  oeh.e_ident[EI_OSABI] = ecp->abi;
 oeh.e_flags = ieh.e_flags;
 oeh.e_machine = ieh.e_machine;
 oeh.e_type = ieh.e_type;
 oeh.e_entry = ieh.e_entry;
 oeh.e_version = ieh.e_version;

 ecp->flags &= ~(EXECUTABLE | DYNAMIC | RELOCATABLE);
 if (ieh.e_type == ET_EXEC)
  ecp->flags |= EXECUTABLE;
 else if (ieh.e_type == ET_DYN)
  ecp->flags |= DYNAMIC;
 else if (ieh.e_type == ET_REL)
  ecp->flags |= RELOCATABLE;
 else
  errx(EXIT_FAILURE, "unsupported e_type");

 if (!elf_getshnum(ecp->ein, &ishnum))
  errx(EXIT_FAILURE, "elf_getshnum failed: %s",
      elf_errmsg(-1));
 if (ishnum > 0 && (ecp->secndx = calloc(ishnum,
     sizeof(*ecp->secndx))) == ((void*)0))
  err(EXIT_FAILURE, "calloc failed");


 setup_phdr(ecp);







 create_scn(ecp);


 adjust_addr(ecp);





 if (ecp->strip == STRIP_DEBUG ||
     ecp->strip == STRIP_UNNEEDED ||
     ecp->flags & WEAKEN_ALL ||
     ecp->flags & LOCALIZE_HIDDEN ||
     ecp->flags & DISCARD_LOCAL ||
     ecp->flags & DISCARD_LLABEL ||
     ecp->prefix_sym != ((void*)0) ||
     !STAILQ_EMPTY(&ecp->v_symop))
  ecp->flags &= ~SYMTAB_INTACT;






 if ((ecp->flags & SYMTAB_EXIST) != 0)
  create_symtab(ecp);





 if (gelf_update_ehdr(ecp->eout, &oeh) == 0)
  errx(EXIT_FAILURE, "gelf_update_ehdr() failed: %s",
      elf_errmsg(-1));
 copy_content(ecp);






 update_shdr(ecp, 1);


 if (gelf_getehdr(ecp->eout, &oeh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getehdr() failed: %s",
      elf_errmsg(-1));
 if (oeh.e_ident[EI_OSABI] == ELFOSABI_FREEBSD)
  shtab = insert_shtab(ecp, 1);
 else
  shtab = insert_shtab(ecp, 0);






 resync_sections(ecp);


 oeh.e_shoff = shtab->off;


 if (ecp->ophnum > 0) {
  oeh.e_phoff = gelf_fsize(ecp->eout, ELF_T_EHDR, 1, EV_CURRENT);
  if (oeh.e_phoff == 0)
   errx(EXIT_FAILURE, "gelf_fsize() failed: %s",
       elf_errmsg(-1));
 }




 if (ecp->change_addr != 0)
  oeh.e_entry += ecp->change_addr;
 if (ecp->flags & SET_START)
  oeh.e_entry = ecp->set_start;
 if (ecp->change_start != 0)
  oeh.e_entry += ecp->change_start;





 if (gelf_update_ehdr(ecp->eout, &oeh) == 0)
  errx(EXIT_FAILURE, "gelf_update_ehdr() failed: %s",
      elf_errmsg(-1));

 if (ecp->ophnum > 0)
  copy_phdr(ecp);


 if (elf_update(ecp->eout, ELF_C_WRITE) < 0)
  errx(EXIT_FAILURE, "elf_update() failed: %s",
      elf_errmsg(-1));


 free_elf(ecp);
}
