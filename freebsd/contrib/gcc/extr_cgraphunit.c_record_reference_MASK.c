#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct TYPE_3__ {int /*<<< orphan*/ * (* analyze_expr ) (int /*<<< orphan*/ **,int*,void*) ;} ;
struct TYPE_4__ {TYPE_1__ callgraph; } ;

/* Variables and functions */
#define  ADDR_EXPR 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  FDESC_EXPR 129 
 int FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int LAST_AND_UNUSED_TREE_CODE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flag_unit_at_a_time ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ **,int*,void*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ **,int*,void*) ; 

__attribute__((used)) static tree
FUNC11 (tree *tp, int *walk_subtrees, void *data)
{
  tree t = *tp;

  switch (FUNC2 (t))
    {
    case VAR_DECL:
      /* ??? Really, we should mark this decl as *potentially* referenced
	 by this function and re-examine whether the decl is actually used
	 after rtl has been generated.  */
      if (FUNC4 (t) || FUNC0 (t))
	{
	  FUNC7 (FUNC8 (t));
	  if (lang_hooks.callgraph.analyze_expr)
	    return lang_hooks.callgraph.analyze_expr (tp, walk_subtrees,
						      data);
	}
      break;

    case FDESC_EXPR:
    case ADDR_EXPR:
      if (flag_unit_at_a_time)
	{
	  /* Record dereferences to the functions.  This makes the
	     functions reachable unconditionally.  */
	  tree decl = FUNC3 (*tp, 0);
	  if (FUNC2 (decl) == FUNCTION_DECL)
	    FUNC5 (FUNC6 (decl));
	}
      break;

    default:
      /* Save some cycles by not walking types and declaration as we
	 won't find anything useful there anyway.  */
      if (FUNC1 (*tp))
	{
	  *walk_subtrees = 0;
	  break;
	}

      if ((unsigned int) FUNC2 (t) >= LAST_AND_UNUSED_TREE_CODE)
	return lang_hooks.callgraph.analyze_expr (tp, walk_subtrees, data);
      break;
    }

  return NULL;
}