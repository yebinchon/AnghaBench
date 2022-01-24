#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* automata_list_el_t ;
struct TYPE_4__ {struct TYPE_4__* next_automata_list_el; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1 (automata_list_el_t automata_list)
{
  automata_list_el_t curr_automata_list_el;
  automata_list_el_t next_automata_list_el;

  for (curr_automata_list_el = automata_list;
       curr_automata_list_el != NULL;
       curr_automata_list_el = next_automata_list_el)
    {
      next_automata_list_el = curr_automata_list_el->next_automata_list_el;
      FUNC0 (curr_automata_list_el);
    }
}