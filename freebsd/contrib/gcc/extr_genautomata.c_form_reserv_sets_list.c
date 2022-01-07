
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pattern_reserv {int dummy; } ;
typedef TYPE_2__* pattern_set_el_t ;
typedef TYPE_3__* pattern_reserv_t ;
struct TYPE_9__ {struct TYPE_9__* next_pattern_reserv; int reserv; } ;
struct TYPE_8__ {int units_num; TYPE_1__** unit_decls; struct TYPE_8__* next_pattern_set_el; } ;
struct TYPE_7__ {int in_set_p; int unit_num; } ;


 int SET_BIT (int ,int ) ;
 int TRUE ;
 int alloc_empty_reserv_sets () ;
 TYPE_3__* create_node (int) ;

__attribute__((used)) static pattern_reserv_t
form_reserv_sets_list (pattern_set_el_t pattern_list)
{
  pattern_set_el_t el;
  pattern_reserv_t first, curr, prev;
  int i;

  prev = first = ((void*)0);
  for (el = pattern_list; el != ((void*)0); el = el->next_pattern_set_el)
    {
      curr = create_node (sizeof (struct pattern_reserv));
      curr->reserv = alloc_empty_reserv_sets ();
      curr->next_pattern_reserv = ((void*)0);
      for (i = 0; i < el->units_num; i++)
 {
   SET_BIT (curr->reserv, el->unit_decls [i]->unit_num);
   el->unit_decls [i]->in_set_p = TRUE;
 }
      if (prev != ((void*)0))
 prev->next_pattern_reserv = curr;
      else
 first = curr;
      prev = curr;
    }
  return first;
}
