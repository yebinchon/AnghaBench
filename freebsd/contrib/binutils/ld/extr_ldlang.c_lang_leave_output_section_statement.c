
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lang_output_section_phdr_list ;
typedef int fill_type ;
struct TYPE_2__ {int * phdrs; int * fill; int * addr_tree; int * load_base; int lma_region; int region; } ;


 TYPE_1__* current_section ;
 int lang_get_regions (int *,int *,char const*,char const*,int ,int ) ;
 int * stat_ptr ;
 int statement_list ;

void
lang_leave_output_section_statement (fill_type *fill, const char *memspec,
         lang_output_section_phdr_list *phdrs,
         const char *lma_memspec)
{
  lang_get_regions (&current_section->region,
      &current_section->lma_region,
      memspec, lma_memspec,
      current_section->load_base != ((void*)0),
      current_section->addr_tree != ((void*)0));
  current_section->fill = fill;
  current_section->phdrs = phdrs;
  stat_ptr = &statement_list;
}
