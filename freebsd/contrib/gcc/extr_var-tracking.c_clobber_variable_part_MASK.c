#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* variable ;
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;
typedef  TYPE_3__* location_chain ;
struct TYPE_13__ {TYPE_5__** regs; int /*<<< orphan*/  vars; } ;
typedef  TYPE_4__ dataflow_set ;
typedef  TYPE_5__* attrs ;
struct TYPE_14__ {scalar_t__ offset; int /*<<< orphan*/  decl; struct TYPE_14__* next; } ;
struct TYPE_12__ {scalar_t__ loc; struct TYPE_12__* next; } ;
struct TYPE_11__ {TYPE_1__* var_part; } ;
struct TYPE_10__ {TYPE_3__* loc_chain; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_INSERT ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  attrs_pool ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 void** FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_5__*) ; 

__attribute__((used)) static void
FUNC8 (dataflow_set *set, rtx loc, tree decl,
		      HOST_WIDE_INT offset)
{
  void **slot;

  if (! decl || ! FUNC0 (decl))
    return;

  slot = FUNC6 (set->vars, decl, FUNC3 (decl),
				   NO_INSERT);
  if (slot)
    {
      variable var = (variable) *slot;
      int pos = FUNC5 (var, offset, NULL);

      if (pos >= 0)
	{
	  location_chain node, next;

	  /* Remove the register locations from the dataflow set.  */
	  next = var->var_part[pos].loc_chain;
	  for (node = next; node; node = next)
	    {
	      next = node->next;
	      if (node->loc != loc)
		{
		  if (FUNC2 (node->loc))
		    {
		      attrs anode, anext;
		      attrs *anextp;

		      /* Remove the variable part from the register's
			 list, but preserve any other variable parts
			 that might be regarded as live in that same
			 register.  */
		      anextp = &set->regs[FUNC1 (node->loc)];
		      for (anode = *anextp; anode; anode = anext)
			{
			  anext = anode->next;
			  if (anode->decl == decl
			      && anode->offset == offset)
			    {
			      FUNC7 (attrs_pool, anode);
			      *anextp = anext;
			    }
			}
		    }

		  FUNC4 (set, node->loc, decl, offset);
		}
	    }
	}
    }
}