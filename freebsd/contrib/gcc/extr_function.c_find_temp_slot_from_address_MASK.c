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
struct temp_slot {scalar_t__ slot; scalar_t__ address; scalar_t__ base_offset; scalar_t__ full_size; struct temp_slot* next; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ EXPR_LIST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int FUNC4 () ; 
 struct temp_slot** FUNC5 (int) ; 
 scalar_t__ virtual_stack_vars_rtx ; 

__attribute__((used)) static struct temp_slot *
FUNC6 (rtx x)
{
  struct temp_slot *p;
  rtx next;
  int i;

  for (i = FUNC4 (); i >= 0; i--)
    for (p = *FUNC5 (i); p; p = p->next)
      {
	if (FUNC3 (p->slot, 0) == x
	    || p->address == x
	    || (FUNC0 (x) == PLUS
		&& FUNC3 (x, 0) == virtual_stack_vars_rtx
		&& FUNC0 (FUNC3 (x, 1)) == CONST_INT
		&& FUNC1 (FUNC3 (x, 1)) >= p->base_offset
		&& FUNC1 (FUNC3 (x, 1)) < p->base_offset + p->full_size))
	  return p;

	else if (p->address != 0 && FUNC0 (p->address) == EXPR_LIST)
	  for (next = p->address; next; next = FUNC3 (next, 1))
	    if (FUNC3 (next, 0) == x)
	      return p;
      }

  /* If we have a sum involving a register, see if it points to a temp
     slot.  */
  if (FUNC0 (x) == PLUS && FUNC2 (FUNC3 (x, 0))
      && (p = FUNC6 (FUNC3 (x, 0))) != 0)
    return p;
  else if (FUNC0 (x) == PLUS && FUNC2 (FUNC3 (x, 1))
	   && (p = FUNC6 (FUNC3 (x, 1))) != 0)
    return p;

  return 0;
}