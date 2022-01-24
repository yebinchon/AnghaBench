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
struct temp_slot {scalar_t__ address; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ EXPR_LIST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 struct temp_slot* FUNC3 (scalar_t__) ; 
 void* FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

void
FUNC6 (rtx old, rtx new)
{
  struct temp_slot *p;

  if (FUNC5 (old, new))
    return;

  p = FUNC3 (old);

  /* If we didn't find one, see if both OLD is a PLUS.  If so, and NEW
     is a register, see if one operand of the PLUS is a temporary
     location.  If so, NEW points into it.  Otherwise, if both OLD and
     NEW are a PLUS and if there is a register in common between them.
     If so, try a recursive call on those values.  */
  if (p == 0)
    {
      if (FUNC0 (old) != PLUS)
	return;

      if (FUNC1 (new))
	{
	  FUNC6 (FUNC2 (old, 0), new);
	  FUNC6 (FUNC2 (old, 1), new);
	  return;
	}
      else if (FUNC0 (new) != PLUS)
	return;

      if (FUNC5 (FUNC2 (old, 0), FUNC2 (new, 0)))
	FUNC6 (FUNC2 (old, 1), FUNC2 (new, 1));
      else if (FUNC5 (FUNC2 (old, 1), FUNC2 (new, 0)))
	FUNC6 (FUNC2 (old, 0), FUNC2 (new, 1));
      else if (FUNC5 (FUNC2 (old, 0), FUNC2 (new, 1)))
	FUNC6 (FUNC2 (old, 1), FUNC2 (new, 0));
      else if (FUNC5 (FUNC2 (old, 1), FUNC2 (new, 1)))
	FUNC6 (FUNC2 (old, 0), FUNC2 (new, 0));

      return;
    }

  /* Otherwise add an alias for the temp's address.  */
  else if (p->address == 0)
    p->address = new;
  else
    {
      if (FUNC0 (p->address) != EXPR_LIST)
	p->address = FUNC4 (VOIDmode, p->address, NULL_RTX);

      p->address = FUNC4 (VOIDmode, new, p->address);
    }
}