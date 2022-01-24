#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pattern_reserv {int dummy; } ;
typedef  TYPE_2__* pattern_set_el_t ;
typedef  TYPE_3__* pattern_reserv_t ;
struct TYPE_9__ {struct TYPE_9__* next_pattern_reserv; int /*<<< orphan*/  reserv; } ;
struct TYPE_8__ {int units_num; TYPE_1__** unit_decls; struct TYPE_8__* next_pattern_set_el; } ;
struct TYPE_7__ {int /*<<< orphan*/  in_set_p; int /*<<< orphan*/  unit_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* FUNC2 (int) ; 

__attribute__((used)) static pattern_reserv_t
FUNC3 (pattern_set_el_t pattern_list)
{
  pattern_set_el_t el;
  pattern_reserv_t first, curr, prev;
  int i;

  prev = first = NULL;
  for (el = pattern_list; el != NULL; el = el->next_pattern_set_el)
    {
      curr = FUNC2 (sizeof (struct pattern_reserv));
      curr->reserv = FUNC1 ();
      curr->next_pattern_reserv = NULL;
      for (i = 0; i < el->units_num; i++)
	{
	  FUNC0 (curr->reserv, el->unit_decls [i]->unit_num);
	  el->unit_decls [i]->in_set_p = TRUE;
	}
      if (prev != NULL)
	prev->next_pattern_reserv = curr;
      else
	first = curr;
      prev = curr;
    }
  return first;
}