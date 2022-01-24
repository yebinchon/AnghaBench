#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_8__ {int /*<<< orphan*/  block; } ;
typedef  TYPE_2__ copy_body_data ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_10__ {scalar_t__ static_chain_decl; } ;
struct TYPE_7__ {scalar_t__ (* convert_parm_for_inlining ) (scalar_t__,scalar_t__,scalar_t__,int) ;} ;
struct TYPE_9__ {TYPE_1__ tree_inlining; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 TYPE_6__* FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ current_function_decl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_4__ lang_hooks ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC8 (copy_body_data *id, tree args, tree static_chain,
			       tree fn, basic_block bb)
{
  tree parms;
  tree a;
  tree p;
  tree vars = NULL_TREE;
  int argnum = 0;

  /* Figure out what the parameters are.  */
  parms = FUNC0 (fn);

  /* Loop through the parameter declarations, replacing each with an
     equivalent VAR_DECL, appropriately initialized.  */
  for (p = parms, a = args; p;
       a = a ? FUNC2 (a) : a, p = FUNC2 (p))
    {
      tree value;

      ++argnum;

      /* Find the initializer.  */
      value = lang_hooks.tree_inlining.convert_parm_for_inlining
	      (p, a ? FUNC3 (a) : NULL_TREE, fn, argnum);

      FUNC6 (id, p, value, fn, bb, &vars);
    }

  /* Initialize the static chain.  */
  p = FUNC1 (fn)->static_chain_decl;
  FUNC5 (fn != current_function_decl);
  if (p)
    {
      /* No static chain?  Seems like a bug in tree-nested.c.  */
      FUNC5 (static_chain);

      FUNC6 (id, p, static_chain, fn, bb, &vars);
    }

  FUNC4 (id->block, vars);
}