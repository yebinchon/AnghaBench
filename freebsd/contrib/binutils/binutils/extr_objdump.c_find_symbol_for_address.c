
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct objdump_disasm_info {scalar_t__ require_sec; int * sec; TYPE_1__* abfd; } ;
struct disassemble_info {scalar_t__ (* symbol_is_valid ) (TYPE_2__*,struct disassemble_info*) ;scalar_t__ application_data; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_1__ bfd ;
struct TYPE_14__ {int * section; } ;
typedef TYPE_2__ asymbol ;
typedef int asection ;


 int HAS_RELOC ;
 scalar_t__ bfd_asymbol_value (TYPE_2__*) ;
 scalar_t__ bfd_get_section_vma (TYPE_1__*,int *) ;
 unsigned int bfd_octets_per_byte (TYPE_1__*) ;
 unsigned int bfd_section_size (TYPE_1__*,int *) ;
 int sorted_symcount ;
 TYPE_2__** sorted_syms ;
 scalar_t__ stub1 (TYPE_2__*,struct disassemble_info*) ;
 scalar_t__ stub2 (TYPE_2__*,struct disassemble_info*) ;
 scalar_t__ stub3 (TYPE_2__*,struct disassemble_info*) ;
 scalar_t__ stub4 (TYPE_2__*,struct disassemble_info*) ;

__attribute__((used)) static asymbol *
find_symbol_for_address (bfd_vma vma,
    struct disassemble_info *info,
    long *place)
{






  long min = 0;
  long max = sorted_symcount;
  long thisplace;
  struct objdump_disasm_info *aux;
  bfd *abfd;
  asection *sec;
  unsigned int opb;
  bfd_boolean want_section;

  if (sorted_symcount < 1)
    return ((void*)0);

  aux = (struct objdump_disasm_info *) info->application_data;
  abfd = aux->abfd;
  sec = aux->sec;
  opb = bfd_octets_per_byte (abfd);



  while (min + 1 < max)
    {
      asymbol *sym;

      thisplace = (max + min) / 2;
      sym = sorted_syms[thisplace];

      if (bfd_asymbol_value (sym) > vma)
 max = thisplace;
      else if (bfd_asymbol_value (sym) < vma)
 min = thisplace;
      else
 {
   min = thisplace;
   break;
 }
    }




  thisplace = min;
  while (thisplace > 0
  && (bfd_asymbol_value (sorted_syms[thisplace])
      == bfd_asymbol_value (sorted_syms[thisplace - 1])))
    --thisplace;
  want_section = (aux->require_sec
    || ((abfd->flags & HAS_RELOC) != 0
        && vma >= bfd_get_section_vma (abfd, sec)
        && vma < (bfd_get_section_vma (abfd, sec)
    + bfd_section_size (abfd, sec) / opb)));
  if ((sorted_syms[thisplace]->section != sec && want_section)
      || !info->symbol_is_valid (sorted_syms[thisplace], info))
    {
      long i;
      long newplace;

      for (i = thisplace + 1; i < sorted_symcount; i++)
 {
   if (bfd_asymbol_value (sorted_syms[i])
       != bfd_asymbol_value (sorted_syms[thisplace]))
     break;
 }

      --i;
      newplace = sorted_symcount;

      for (; i >= 0; i--)
 {
   if ((sorted_syms[i]->section == sec || !want_section)
       && info->symbol_is_valid (sorted_syms[i], info))
     {
       if (newplace == sorted_symcount)
  newplace = i;

       if (bfd_asymbol_value (sorted_syms[i])
    != bfd_asymbol_value (sorted_syms[newplace]))
  break;



       newplace = i;
     }
 }

      if (newplace != sorted_symcount)
 thisplace = newplace;
      else
 {


   for (i = thisplace + 1; i < sorted_symcount; i++)
     {
       if ((sorted_syms[i]->section == sec || !want_section)
    && info->symbol_is_valid (sorted_syms[i], info))
  {
    thisplace = i;
    break;
  }
     }
 }

      if ((sorted_syms[thisplace]->section != sec && want_section)
   || !info->symbol_is_valid (sorted_syms[thisplace], info))

 return ((void*)0);
    }

  if (place != ((void*)0))
    *place = thisplace;

  return sorted_syms[thisplace];
}
