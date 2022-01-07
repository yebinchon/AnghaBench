
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_20__ ;
typedef struct TYPE_40__ TYPE_1__ ;
typedef struct TYPE_39__ TYPE_14__ ;
typedef struct TYPE_38__ TYPE_10__ ;


struct elf_backend_data {int (* elf_backend_symbol_table_processing ) (TYPE_2__*,TYPE_1__*,unsigned long) ;int (* elf_backend_symbol_processing ) (TYPE_2__*,TYPE_10__*) ;} ;
struct TYPE_38__ {int flags; TYPE_20__* section; int value; int name; TYPE_2__* the_bfd; } ;
struct TYPE_40__ {TYPE_10__ symbol; int version; int internal_elf_sym; } ;
typedef TYPE_1__ elf_symbol_type ;
typedef int bfd_size_type ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_42__ {int flags; int filename; } ;
typedef TYPE_2__ bfd ;
typedef int asymbol ;
struct TYPE_45__ {int sh_size; unsigned char* contents; int sh_offset; } ;
struct TYPE_44__ {scalar_t__ st_shndx; int st_info; int st_size; int st_value; } ;
struct TYPE_43__ {int vs_vers; } ;
struct TYPE_41__ {scalar_t__ vma; } ;
struct TYPE_39__ {scalar_t__ dynverdef_section; scalar_t__ dynverref_section; int * verref; int * verdef; TYPE_5__ dynversym_hdr; TYPE_5__ dynsymtab_hdr; TYPE_5__ symtab_hdr; } ;
typedef TYPE_3__ Elf_Internal_Versym ;
typedef TYPE_4__ Elf_Internal_Sym ;
typedef TYPE_5__ Elf_Internal_Shdr ;
typedef TYPE_4__ Elf_External_Versym ;
typedef int Elf_External_Sym ;


 int BSF_DEBUGGING ;
 int BSF_DYNAMIC ;
 int BSF_FILE ;
 int BSF_FUNCTION ;
 int BSF_GLOBAL ;
 int BSF_LOCAL ;
 int BSF_OBJECT ;
 int BSF_RELC ;
 int BSF_SECTION_SYM ;
 int BSF_SRELC ;
 int BSF_THREAD_LOCAL ;
 int BSF_WEAK ;
 int DYNAMIC ;
 int ELF_ST_BIND (int ) ;
 int ELF_ST_TYPE (int ) ;
 int EXEC_P ;
 int FALSE ;
 int SEEK_SET ;
 scalar_t__ SHN_ABS ;
 scalar_t__ SHN_COMMON ;
 scalar_t__ SHN_HIRESERVE ;
 scalar_t__ SHN_LORESERVE ;
 scalar_t__ SHN_UNDEF ;
 int _ (char*) ;
 int _bfd_elf_slurp_version_tables (TYPE_2__*,int ) ;
 int _bfd_elf_swap_versym_in (TYPE_2__*,TYPE_4__*,TYPE_3__*) ;
 int _bfd_error_handler (int ,int ,long,unsigned long) ;
 void* bfd_abs_section_ptr ;
 int bfd_bread (TYPE_4__*,int,TYPE_2__*) ;
 TYPE_20__* bfd_com_section_ptr ;
 TYPE_4__* bfd_elf_get_elf_syms (TYPE_2__*,TYPE_5__*,unsigned long,int ,int *,int *,int *) ;
 int bfd_elf_sym_name (TYPE_2__*,TYPE_5__*,TYPE_4__*,int *) ;
 TYPE_4__* bfd_malloc (int) ;
 TYPE_20__* bfd_section_from_elf_index (TYPE_2__*,scalar_t__) ;
 scalar_t__ bfd_seek (TYPE_2__*,int ,int ) ;
 TYPE_20__* bfd_und_section_ptr ;
 TYPE_1__* bfd_zalloc (TYPE_2__*,int) ;
 scalar_t__ elf_dynversym (TYPE_2__*) ;
 TYPE_14__* elf_tdata (TYPE_2__*) ;
 int free (TYPE_4__*) ;
 struct elf_backend_data* get_elf_backend_data (TYPE_2__*) ;
 int memcpy (int *,TYPE_4__*,int) ;
 int stub1 (int ,int ,long,unsigned long) ;
 int stub2 (TYPE_2__*,TYPE_10__*) ;
 int stub3 (TYPE_2__*,TYPE_1__*,unsigned long) ;

long
elf_slurp_symbol_table (bfd *abfd, asymbol **symptrs, bfd_boolean dynamic)
{
  Elf_Internal_Shdr *hdr;
  Elf_Internal_Shdr *verhdr;
  unsigned long symcount;
  elf_symbol_type *sym;
  elf_symbol_type *symbase;
  Elf_Internal_Sym *isym;
  Elf_Internal_Sym *isymend;
  Elf_Internal_Sym *isymbuf = ((void*)0);
  Elf_External_Versym *xver;
  Elf_External_Versym *xverbuf = ((void*)0);
  const struct elf_backend_data *ebd;
  bfd_size_type amt;
  if (! dynamic)
    {
      hdr = &elf_tdata (abfd)->symtab_hdr;
      verhdr = ((void*)0);
    }
  else
    {
      hdr = &elf_tdata (abfd)->dynsymtab_hdr;
      if (elf_dynversym (abfd) == 0)
 verhdr = ((void*)0);
      else
 verhdr = &elf_tdata (abfd)->dynversym_hdr;
      if ((elf_tdata (abfd)->dynverdef_section != 0
    && elf_tdata (abfd)->verdef == ((void*)0))
   || (elf_tdata (abfd)->dynverref_section != 0
       && elf_tdata (abfd)->verref == ((void*)0)))
 {
   if (!_bfd_elf_slurp_version_tables (abfd, FALSE))
     return -1;
 }
    }

  ebd = get_elf_backend_data (abfd);
  symcount = hdr->sh_size / sizeof (Elf_External_Sym);
  if (symcount == 0)
    sym = symbase = ((void*)0);
  else
    {
      isymbuf = bfd_elf_get_elf_syms (abfd, hdr, symcount, 0,
          ((void*)0), ((void*)0), ((void*)0));
      if (isymbuf == ((void*)0))
 return -1;

      amt = symcount;
      amt *= sizeof (elf_symbol_type);
      symbase = bfd_zalloc (abfd, amt);
      if (symbase == (elf_symbol_type *) ((void*)0))
 goto error_return;


      if (verhdr != ((void*)0)
   && verhdr->sh_size / sizeof (Elf_External_Versym) != symcount)
 {
   (*_bfd_error_handler)
     (_("%s: version count (%ld) does not match symbol count (%ld)"),
      abfd->filename,
      (long) (verhdr->sh_size / sizeof (Elf_External_Versym)),
      symcount);



   verhdr = ((void*)0);
 }

      if (verhdr != ((void*)0))
 {
   if (bfd_seek (abfd, verhdr->sh_offset, SEEK_SET) != 0)
     goto error_return;

   xverbuf = bfd_malloc (verhdr->sh_size);
   if (xverbuf == ((void*)0) && verhdr->sh_size != 0)
     goto error_return;

   if (bfd_bread (xverbuf, verhdr->sh_size, abfd) != verhdr->sh_size)
     goto error_return;
 }


      xver = xverbuf;
      if (xver != ((void*)0))
 ++xver;
      isymend = isymbuf + symcount;
      for (isym = isymbuf + 1, sym = symbase; isym < isymend; isym++, sym++)
 {
   memcpy (&sym->internal_elf_sym, isym, sizeof (Elf_Internal_Sym));
   sym->symbol.the_bfd = abfd;

   sym->symbol.name = bfd_elf_sym_name (abfd, hdr, isym, ((void*)0));

   sym->symbol.value = isym->st_value;

   if (isym->st_shndx == SHN_UNDEF)
     {
       sym->symbol.section = bfd_und_section_ptr;
     }
   else if (isym->st_shndx < SHN_LORESERVE
     || isym->st_shndx > SHN_HIRESERVE)
     {
       sym->symbol.section = bfd_section_from_elf_index (abfd,
        isym->st_shndx);
       if (sym->symbol.section == ((void*)0))
  {



    sym->symbol.section = bfd_abs_section_ptr;
  }
     }
   else if (isym->st_shndx == SHN_ABS)
     {
       sym->symbol.section = bfd_abs_section_ptr;
     }
   else if (isym->st_shndx == SHN_COMMON)
     {
       sym->symbol.section = bfd_com_section_ptr;




       sym->symbol.value = isym->st_size;
     }
   else
     sym->symbol.section = bfd_abs_section_ptr;



   if ((abfd->flags & (EXEC_P | DYNAMIC)) != 0)
     sym->symbol.value -= sym->symbol.section->vma;

   switch (ELF_ST_BIND (isym->st_info))
     {
     case 136:
       sym->symbol.flags |= BSF_LOCAL;
       break;
     case 137:
       if (isym->st_shndx != SHN_UNDEF && isym->st_shndx != SHN_COMMON)
  sym->symbol.flags |= BSF_GLOBAL;
       break;
     case 135:
       sym->symbol.flags |= BSF_WEAK;
       break;
     }

   switch (ELF_ST_TYPE (isym->st_info))
     {
     case 130:
       sym->symbol.flags |= BSF_SECTION_SYM | BSF_DEBUGGING;
       break;
     case 134:
       sym->symbol.flags |= BSF_FILE | BSF_DEBUGGING;
       break;
     case 133:
       sym->symbol.flags |= BSF_FUNCTION;
       break;
     case 132:
       sym->symbol.flags |= BSF_OBJECT;
       break;
     case 128:
       sym->symbol.flags |= BSF_THREAD_LOCAL;
       break;
     case 131:
       sym->symbol.flags |= BSF_RELC;
       break;
     case 129:
       sym->symbol.flags |= BSF_SRELC;
       break;
     }

   if (dynamic)
     sym->symbol.flags |= BSF_DYNAMIC;

   if (xver != ((void*)0))
     {
       Elf_Internal_Versym iversym;

       _bfd_elf_swap_versym_in (abfd, xver, &iversym);
       sym->version = iversym.vs_vers;
       xver++;
     }


   if (ebd->elf_backend_symbol_processing)
     (*ebd->elf_backend_symbol_processing) (abfd, &sym->symbol);
 }
    }


  if (ebd->elf_backend_symbol_table_processing)
    (*ebd->elf_backend_symbol_table_processing) (abfd, symbase, symcount);



  symcount = sym - symbase;


  if (symptrs)
    {
      long l = symcount;

      sym = symbase;
      while (l-- > 0)
 {
   *symptrs++ = &sym->symbol;
   sym++;
 }
      *symptrs = 0;
    }

  if (xverbuf != ((void*)0))
    free (xverbuf);
  if (isymbuf != ((void*)0) && hdr->contents != (unsigned char *) isymbuf)
    free (isymbuf);
  return symcount;

error_return:
  if (xverbuf != ((void*)0))
    free (xverbuf);
  if (isymbuf != ((void*)0) && hdr->contents != (unsigned char *) isymbuf)
    free (isymbuf);
  return -1;
}
