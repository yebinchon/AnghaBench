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
typedef  scalar_t__ tree ;
struct z_candidate {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct z_candidate**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  pedantic ; 
 struct z_candidate* FUNC4 (struct z_candidate*,int /*<<< orphan*/ ,int*) ; 
 struct z_candidate* FUNC5 (struct z_candidate*) ; 

__attribute__((used)) static struct z_candidate *
FUNC6 (tree fn,
			     tree args,
			     struct z_candidate **candidates,
			     bool *any_viable_p)
{
  struct z_candidate *cand;
  tree explicit_targs = NULL_TREE;
  int template_only = 0;

  *candidates = NULL;
  *any_viable_p = true;

  /* Check FN and ARGS.  */
  FUNC3 (FUNC0 (fn) == FUNCTION_DECL
	      || FUNC0 (fn) == TEMPLATE_DECL
	      || FUNC0 (fn) == OVERLOAD
	      || FUNC0 (fn) == TEMPLATE_ID_EXPR);
  FUNC3 (!args || FUNC0 (args) == TREE_LIST);

  if (FUNC0 (fn) == TEMPLATE_ID_EXPR)
    {
      explicit_targs = FUNC1 (fn, 1);
      fn = FUNC1 (fn, 0);
      template_only = 1;
    }

  /* Add the various candidate functions.  */
  FUNC2 (fn, args, explicit_targs, template_only,
		  /*conversion_path=*/NULL_TREE,
		  /*access_path=*/NULL_TREE,
		  LOOKUP_NORMAL,
		  candidates);

  *candidates = FUNC4 (*candidates, pedantic, any_viable_p);
  if (!*any_viable_p)
    return NULL;

  cand = FUNC5 (*candidates);
  return cand;
}