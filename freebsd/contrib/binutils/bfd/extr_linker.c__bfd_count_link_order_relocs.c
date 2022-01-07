
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_order {scalar_t__ type; struct bfd_link_order* next; } ;


 scalar_t__ bfd_section_reloc_link_order ;
 scalar_t__ bfd_symbol_reloc_link_order ;

unsigned int
_bfd_count_link_order_relocs (struct bfd_link_order *link_order)
{
  register unsigned int c;
  register struct bfd_link_order *l;

  c = 0;
  for (l = link_order; l != ((void*)0); l = l->next)
    {
      if (l->type == bfd_section_reloc_link_order
   || l->type == bfd_symbol_reloc_link_order)
 ++c;
    }

  return c;
}
