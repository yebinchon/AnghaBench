
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int value; TYPE_4__* section; } ;
struct TYPE_9__ {TYPE_1__ def; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct elf_link_hash_entry {scalar_t__ size; TYPE_3__ root; } ;
typedef unsigned int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_11__ {unsigned int size; int owner; } ;
typedef TYPE_4__ asection ;


 unsigned int BFD_ALIGN (unsigned int,unsigned int) ;
 int FALSE ;
 int TRUE ;
 unsigned int bfd_get_section_alignment (int ,TYPE_4__*) ;
 int bfd_set_section_alignment (int ,TYPE_4__*,unsigned int) ;

bfd_boolean
_bfd_elf_adjust_dynamic_copy (struct elf_link_hash_entry *h,
         asection *dynbss)
{
  unsigned int power_of_two;
  bfd_vma mask;
  asection *sec = h->root.u.def.section;






  power_of_two = bfd_get_section_alignment (sec->owner, sec);
  mask = ((bfd_vma) 1 << power_of_two) - 1;
  while ((h->root.u.def.value & mask) != 0)
    {
       mask >>= 1;
       --power_of_two;
    }

  if (power_of_two > bfd_get_section_alignment (dynbss->owner,
      dynbss))
    {

      if (! bfd_set_section_alignment (dynbss->owner, dynbss,
           power_of_two))
 return FALSE;
    }


  dynbss->size = BFD_ALIGN (dynbss->size, mask + 1);


  h->root.u.def.section = dynbss;
  h->root.u.def.value = dynbss->size;


  dynbss->size += h->size;

  return TRUE;
}
