
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_section {int dummy; } ;


 unsigned long NR_SECTION_ROOTS ;
 unsigned long SECTIONS_PER_ROOT ;
 struct mem_section* __nr_to_section (unsigned long) ;

int __section_nr(struct mem_section* ms)
{
 unsigned long root_nr;
 struct mem_section* root;

 for (root_nr = 0; root_nr < NR_SECTION_ROOTS; root_nr++) {
  root = __nr_to_section(root_nr * SECTIONS_PER_ROOT);
  if (!root)
   continue;

  if ((ms >= root) && (ms < (root + SECTIONS_PER_ROOT)))
       break;
 }

 return (root_nr * SECTIONS_PER_ROOT) + (ms - root);
}
