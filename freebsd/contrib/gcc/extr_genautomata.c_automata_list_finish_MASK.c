#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * automata_list_el_t ;

/* Variables and functions */
 int /*<<< orphan*/  automata_list_table ; 
 int /*<<< orphan*/ * current_automata_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void** FUNC1 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static automata_list_el_t
FUNC2 (void)
{
  void **entry_ptr;

  if (current_automata_list == NULL)
    return NULL;
  entry_ptr = FUNC1 (automata_list_table,
			      (void *) current_automata_list, 1);
  if (*entry_ptr == NULL)
    *entry_ptr = (void *) current_automata_list;
  else
    FUNC0 (current_automata_list);
  current_automata_list = NULL;
  return (automata_list_el_t) *entry_ptr;
}