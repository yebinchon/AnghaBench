
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct objfile {int section_offsets; int * obfd; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;
struct TYPE_14__ {int value; int flags; int address; struct TYPE_14__** sym_ptr_ptr; TYPE_1__* howto; } ;
typedef TYPE_2__ asymbol ;
struct TYPE_15__ {int vma; } ;
typedef TYPE_3__ asection ;
typedef TYPE_2__ arelent ;
struct TYPE_13__ {int type; } ;
typedef int CORE_ADDR ;


 int ANOFFSET (int ,int ) ;
 int BSF_GLOBAL ;
 int DYNAMIC ;
 int N_BSS ;
 int N_DATA ;
 int N_EXT ;
 int N_TEXT ;
 int RELOC_JMP_SLOT ;
 int SECT_OFF_BSS (struct objfile*) ;
 int SECT_OFF_DATA (struct objfile*) ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_DATA ;


 int bfd_arch_unknown ;
 scalar_t__ bfd_asymbol_name (TYPE_2__*) ;
 long bfd_canonicalize_dynamic_reloc (int *,TYPE_2__**,TYPE_2__**) ;
 long bfd_canonicalize_dynamic_symtab (int *,TYPE_2__**) ;
 int bfd_get_arch (int *) ;
 long bfd_get_dynamic_reloc_upper_bound (int *) ;
 long bfd_get_dynamic_symtab_upper_bound (int *) ;
 int bfd_get_file_flags (int *) ;
 scalar_t__ bfd_get_flavour (int *) ;
 TYPE_3__* bfd_get_section (TYPE_2__*) ;
 int bfd_get_section_flags (int *,TYPE_3__*) ;
 scalar_t__ bfd_get_symcount (int *) ;
 scalar_t__ bfd_target_aout_flavour ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup (int ,TYPE_2__**) ;
 int mst_solib_trampoline ;
 int prim_record_minimal_symbol (char*,int,int ,struct objfile*) ;
 int record_minimal_symbol (char*,int,int,struct objfile*) ;
 int xfree ;
 scalar_t__ xmalloc (long) ;

__attribute__((used)) static void
read_dbx_dynamic_symtab (struct objfile *objfile)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;
  int counter;
  long dynsym_size;
  long dynsym_count;
  asymbol **dynsyms;
  asymbol **symptr;
  arelent **relptr;
  long dynrel_size;
  long dynrel_count;
  arelent **dynrels;
  CORE_ADDR sym_value;
  char *name;






  if (bfd_get_flavour (abfd) != bfd_target_aout_flavour
      || (bfd_get_file_flags (abfd) & DYNAMIC) == 0
      || bfd_get_arch (abfd) == bfd_arch_unknown)
    return;

  dynsym_size = bfd_get_dynamic_symtab_upper_bound (abfd);
  if (dynsym_size < 0)
    return;

  dynsyms = (asymbol **) xmalloc (dynsym_size);
  back_to = make_cleanup (xfree, dynsyms);

  dynsym_count = bfd_canonicalize_dynamic_symtab (abfd, dynsyms);
  if (dynsym_count < 0)
    {
      do_cleanups (back_to);
      return;
    }



  if (bfd_get_symcount (abfd) <= 0)
    {
      symptr = dynsyms;
      for (counter = 0; counter < dynsym_count; counter++, symptr++)
 {
   asymbol *sym = *symptr;
   asection *sec;
   int type;

   sec = bfd_get_section (sym);


   sym_value = sym->value + sec->vma;

   if (bfd_get_section_flags (abfd, sec) & SEC_CODE)
     {
       sym_value += ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));
       type = N_TEXT;
     }
   else if (bfd_get_section_flags (abfd, sec) & SEC_DATA)
     {
       sym_value += ANOFFSET (objfile->section_offsets, SECT_OFF_DATA (objfile));
       type = N_DATA;
     }
   else if (bfd_get_section_flags (abfd, sec) & SEC_ALLOC)
     {
       sym_value += ANOFFSET (objfile->section_offsets, SECT_OFF_BSS (objfile));
       type = N_BSS;
     }
   else
     continue;

   if (sym->flags & BSF_GLOBAL)
     type |= N_EXT;

   record_minimal_symbol ((char *) bfd_asymbol_name (sym), sym_value,
     type, objfile);
 }
    }





  dynrel_size = bfd_get_dynamic_reloc_upper_bound (abfd);
  if (dynrel_size < 0)
    {
      do_cleanups (back_to);
      return;
    }

  dynrels = (arelent **) xmalloc (dynrel_size);
  make_cleanup (xfree, dynrels);

  dynrel_count = bfd_canonicalize_dynamic_reloc (abfd, dynrels, dynsyms);
  if (dynrel_count < 0)
    {
      do_cleanups (back_to);
      return;
    }

  for (counter = 0, relptr = dynrels;
       counter < dynrel_count;
       counter++, relptr++)
    {
      arelent *rel = *relptr;
      CORE_ADDR address =
      rel->address + ANOFFSET (objfile->section_offsets, SECT_OFF_DATA (objfile));

      switch (bfd_get_arch (abfd))
 {
 case 128:
   if (rel->howto->type != RELOC_JMP_SLOT)
     continue;
   break;
 case 129:

   if (rel->howto->type != 16)
     continue;



   address -= 2;
   break;
 default:
   continue;
 }

      name = (char *) bfd_asymbol_name (*rel->sym_ptr_ptr);
      prim_record_minimal_symbol (name, address, mst_solib_trampoline,
      objfile);
    }

  do_cleanups (back_to);
}
