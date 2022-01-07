
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int constraint; TYPE_2__* bfd_section; struct TYPE_5__* prev; } ;
typedef TYPE_1__ lang_output_section_statement_type ;
struct TYPE_6__ {int * owner; } ;
typedef TYPE_2__ asection ;



__attribute__((used)) static asection *
output_prev_sec_find (lang_output_section_statement_type *os)
{
  lang_output_section_statement_type *lookup;

  for (lookup = os->prev; lookup != ((void*)0); lookup = lookup->prev)
    {
      if (lookup->constraint == -1)
 continue;

      if (lookup->bfd_section != ((void*)0) && lookup->bfd_section->owner != ((void*)0))
 return lookup->bfd_section;
    }

  return ((void*)0);
}
