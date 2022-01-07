
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
struct wildcard_list {TYPE_1__ spec; struct wildcard_list* next; } ;
struct TYPE_5__ {struct wildcard_list** handler_data; struct wildcard_list* section_list; int walk_wild_section_handler; int * tree; } ;
typedef TYPE_2__ lang_wild_statement_type ;


 int is_simple_wild (int *) ;
 int walk_wild_section_general ;
 int walk_wild_section_specs1_wild0 ;
 int walk_wild_section_specs1_wild1 ;
 int walk_wild_section_specs2_wild1 ;
 int walk_wild_section_specs3_wild2 ;
 int walk_wild_section_specs4_wild2 ;
 scalar_t__ wild_spec_can_overlap (int *,int *) ;
 scalar_t__ wildcardp (int *) ;

__attribute__((used)) static void
analyze_walk_wild_section_handler (lang_wild_statement_type *ptr)
{
  int sec_count = 0;
  int wild_name_count = 0;
  struct wildcard_list *sec;
  int signature;
  int data_counter;

  ptr->walk_wild_section_handler = walk_wild_section_general;
  ptr->handler_data[0] = ((void*)0);
  ptr->handler_data[1] = ((void*)0);
  ptr->handler_data[2] = ((void*)0);
  ptr->handler_data[3] = ((void*)0);
  ptr->tree = ((void*)0);







  for (sec = ptr->section_list; sec != ((void*)0); sec = sec->next)
    {
      ++sec_count;
      if (sec->spec.name == ((void*)0))
 return;
      if (wildcardp (sec->spec.name))
 {
   ++wild_name_count;
   if (!is_simple_wild (sec->spec.name))
     return;
 }
    }




  if (sec_count == 0 || sec_count > 4)
    return;


  for (sec = ptr->section_list; sec != ((void*)0); sec = sec->next)
    {
      struct wildcard_list *sec2;
      for (sec2 = sec->next; sec2 != ((void*)0); sec2 = sec2->next)
 {
   if (wild_spec_can_overlap (sec->spec.name, sec2->spec.name))
     return;
 }
    }

  signature = (sec_count << 8) + wild_name_count;
  switch (signature)
    {
    case 0x0100:
      ptr->walk_wild_section_handler = walk_wild_section_specs1_wild0;
      break;
    case 0x0101:
      ptr->walk_wild_section_handler = walk_wild_section_specs1_wild1;
      break;
    case 0x0201:
      ptr->walk_wild_section_handler = walk_wild_section_specs2_wild1;
      break;
    case 0x0302:
      ptr->walk_wild_section_handler = walk_wild_section_specs3_wild2;
      break;
    case 0x0402:
      ptr->walk_wild_section_handler = walk_wild_section_specs4_wild2;
      break;
    default:
      return;
    }






  data_counter = 0;
  for (sec = ptr->section_list; sec != ((void*)0); sec = sec->next)
    if (!wildcardp (sec->spec.name))
      ptr->handler_data[data_counter++] = sec;
  for (sec = ptr->section_list; sec != ((void*)0); sec = sec->next)
    if (wildcardp (sec->spec.name))
      ptr->handler_data[data_counter++] = sec;
}
