
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* pattern_set_el_t ;
struct TYPE_5__ {int units_num; TYPE_1__** unit_decls; struct TYPE_5__* next_pattern_set_el; } ;
struct TYPE_4__ {int name; } ;


 int fprintf (int ,char*,...) ;
 int output_description_file ;

__attribute__((used)) static void
output_pattern_set_el_list (pattern_set_el_t list)
{
  pattern_set_el_t el;
  int i;

  for (el = list; el != ((void*)0); el = el->next_pattern_set_el)
    {
      if (el != list)
 fprintf (output_description_file, ", ");
      for (i = 0; i < el->units_num; i++)
 fprintf (output_description_file, (i == 0 ? "%s" : " %s"),
   el->unit_decls [i]->name);
    }
}
