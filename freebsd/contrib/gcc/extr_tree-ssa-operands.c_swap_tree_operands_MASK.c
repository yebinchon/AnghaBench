#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* use_optype_p ;
typedef  scalar_t__ tree ;
struct TYPE_6__ {scalar_t__* use; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 

void
FUNC3 (tree stmt, tree *exp0, tree *exp1)
{
  tree op0, op1;
  op0 = *exp0;
  op1 = *exp1;

  /* If the operand cache is active, attempt to preserve the relative
     positions of these two operands in their respective immediate use
     lists.  */
  if (FUNC2 () && op0 != op1)
    {
      use_optype_p use0, use1, ptr;
      use0 = use1 = NULL;

      /* Find the 2 operands in the cache, if they are there.  */
      for (ptr = FUNC0 (stmt); ptr; ptr = ptr->next)
	if (FUNC1 (ptr)->use == exp0)
	  {
	    use0 = ptr;
	    break;
	  }

      for (ptr = FUNC0 (stmt); ptr; ptr = ptr->next)
	if (FUNC1 (ptr)->use == exp1)
	  {
	    use1 = ptr;
	    break;
	  }

      /* If both uses don't have operand entries, there isn't much we can do
         at this point.  Presumably we don't need to worry about it.  */
      if (use0 && use1)
        {
	  tree *tmp = FUNC1 (use1)->use;
	  FUNC1 (use1)->use = FUNC1 (use0)->use;
	  FUNC1 (use0)->use = tmp;
	}
    }

  /* Now swap the data.  */
  *exp0 = op1;
  *exp1 = op0;
}