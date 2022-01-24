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
struct temp_slot {scalar_t__ level; int /*<<< orphan*/  keep; struct temp_slot* next; scalar_t__ addr_taken; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct temp_slot* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct temp_slot*,scalar_t__) ; 
 scalar_t__ temp_slot_level ; 
 struct temp_slot** FUNC7 (scalar_t__) ; 

void
FUNC8 (rtx x)
{
  struct temp_slot *p = 0, *next;

  /* If there is no result, we still might have some objects whose address
     were taken, so we need to make sure they stay around.  */
  if (x == 0)
    {
      for (p = *FUNC7 (temp_slot_level); p; p = next)
	{
	  next = p->next;

	  if (p->addr_taken)
	    FUNC6 (p, temp_slot_level - 1);
	}

      return;
    }

  /* If X is a register that is being used as a pointer, see if we have
     a temporary slot we know it points to.  To be consistent with
     the code below, we really should preserve all non-kept slots
     if we can't find a match, but that seems to be much too costly.  */
  if (FUNC2 (x) && FUNC3 (x))
    p = FUNC5 (x);

  /* If X is not in memory or is at a constant address, it cannot be in
     a temporary slot, but it can contain something whose address was
     taken.  */
  if (p == 0 && (!FUNC1 (x) || FUNC0 (FUNC4 (x, 0))))
    {
      for (p = *FUNC7 (temp_slot_level); p; p = next)
	{
	  next = p->next;

	  if (p->addr_taken)
	    FUNC6 (p, temp_slot_level - 1);
	}

      return;
    }

  /* First see if we can find a match.  */
  if (p == 0)
    p = FUNC5 (FUNC4 (x, 0));

  if (p != 0)
    {
      /* Move everything at our level whose address was taken to our new
	 level in case we used its address.  */
      struct temp_slot *q;

      if (p->level == temp_slot_level)
	{
	  for (q = *FUNC7 (temp_slot_level); q; q = next)
	    {
	      next = q->next;

	      if (p != q && q->addr_taken)
		FUNC6 (q, temp_slot_level - 1);
	    }

	  FUNC6 (p, temp_slot_level - 1);
	  p->addr_taken = 0;
	}
      return;
    }

  /* Otherwise, preserve all non-kept slots at this level.  */
  for (p = *FUNC7 (temp_slot_level); p; p = next)
    {
      next = p->next;

      if (!p->keep)
	FUNC6 (p, temp_slot_level - 1);
    }
}