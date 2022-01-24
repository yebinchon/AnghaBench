#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* variable ;
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;
typedef  TYPE_3__* location_chain ;
struct TYPE_15__ {int /*<<< orphan*/  vars; } ;
typedef  TYPE_4__ dataflow_set ;
struct TYPE_14__ {scalar_t__ loc; struct TYPE_14__* next; } ;
struct TYPE_13__ {int refcount; int n_var_parts; TYPE_1__* var_part; } ;
struct TYPE_12__ {TYPE_3__* loc_chain; scalar_t__ cur_loc; } ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  NO_INSERT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void** FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loc_chain_pool ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC7 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (dataflow_set *set, rtx loc, tree decl,
		      HOST_WIDE_INT offset)
{
  void **slot;
    
  slot = FUNC4 (set->vars, decl, FUNC2 (decl),
				   NO_INSERT);
  if (slot)
    {
      variable var = (variable) *slot;
      int pos = FUNC3 (var, offset, NULL);

      if (pos >= 0)
	{
	  location_chain node, next;
	  location_chain *nextp;
	  bool changed;

	  if (var->refcount > 1)
	    {
	      /* If the variable contains the location part we have to
		 make a copy of the variable.  */
	      for (node = var->var_part[pos].loc_chain; node;
		   node = node->next)
		{
		  if ((FUNC1 (node->loc) && FUNC1 (loc)
		       && FUNC0 (node->loc) == FUNC0 (loc))
		      || FUNC6 (node->loc, loc))
		    {
		      var = FUNC7 (set, var);
		      break;
		    }
		}
	    }

	  /* Delete the location part.  */
	  nextp = &var->var_part[pos].loc_chain;
	  for (node = *nextp; node; node = next)
	    {
	      next = node->next;
	      if ((FUNC1 (node->loc) && FUNC1 (loc)
		   && FUNC0 (node->loc) == FUNC0 (loc))
		  || FUNC6 (node->loc, loc))
		{
		  FUNC5 (loc_chain_pool, node);
		  *nextp = next;
		  break;
		}
	      else
		nextp = &node->next;
	    }

	  /* If we have deleted the location which was last emitted
	     we have to emit new location so add the variable to set
	     of changed variables.  */
	  if (var->var_part[pos].cur_loc
	      && ((FUNC1 (loc)
		   && FUNC1 (var->var_part[pos].cur_loc)
		   && FUNC0 (loc) == FUNC0 (var->var_part[pos].cur_loc))
		  || FUNC6 (loc, var->var_part[pos].cur_loc)))
	    {
	      changed = true;
	      if (var->var_part[pos].loc_chain)
		var->var_part[pos].cur_loc = var->var_part[pos].loc_chain->loc;
	    }
	  else
	    changed = false;

	  if (var->var_part[pos].loc_chain == NULL)
	    {
	      var->n_var_parts--;
	      while (pos < var->n_var_parts)
		{
		  var->var_part[pos] = var->var_part[pos + 1];
		  pos++;
		}
	    }
	  if (changed)
	    FUNC8 (var, set->vars);
	}
    }
}