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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ TRUTH_ANDIF_EXPR ; 
 scalar_t__ TRUTH_ORIF_EXPR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static tree
FUNC6 (tree pred, tree *true_label_p, tree *false_label_p)
{
  tree local_label = NULL_TREE;
  tree t, expr = NULL;

  /* OK, it's not a simple case; we need to pull apart the COND_EXPR to
     retain the shortcut semantics.  Just insert the gotos here;
     shortcut_cond_expr will append the real blocks later.  */
  if (FUNC0 (pred) == TRUTH_ANDIF_EXPR)
    {
      /* Turn if (a && b) into

	 if (a); else goto no;
	 if (b) goto yes; else goto no;
	 (no:) */

      if (false_label_p == NULL)
	false_label_p = &local_label;

      t = FUNC6 (FUNC1 (pred, 0), NULL, false_label_p);
      FUNC2 (t, &expr);

      t = FUNC6 (FUNC1 (pred, 1), true_label_p,
			   false_label_p);
      FUNC2 (t, &expr);
    }
  else if (FUNC0 (pred) == TRUTH_ORIF_EXPR)
    {
      /* Turn if (a || b) into

	 if (a) goto yes;
	 if (b) goto yes; else goto no;
	 (yes:) */

      if (true_label_p == NULL)
	true_label_p = &local_label;

      t = FUNC6 (FUNC1 (pred, 0), true_label_p, NULL);
      FUNC2 (t, &expr);

      t = FUNC6 (FUNC1 (pred, 1), true_label_p,
			   false_label_p);
      FUNC2 (t, &expr);
    }
  else if (FUNC0 (pred) == COND_EXPR)
    {
      /* As long as we're messing with gotos, turn if (a ? b : c) into
	 if (a)
	   if (b) goto yes; else goto no;
	 else
	   if (c) goto yes; else goto no;  */
      expr = FUNC4 (COND_EXPR, void_type_node, FUNC1 (pred, 0),
		     FUNC6 (FUNC1 (pred, 1), true_label_p,
				      false_label_p),
		     FUNC6 (FUNC1 (pred, 2), true_label_p,
				      false_label_p));
    }
  else
    {
      expr = FUNC4 (COND_EXPR, void_type_node, pred,
		     FUNC5 (true_label_p),
		     FUNC5 (false_label_p));
    }

  if (local_label)
    {
      t = FUNC3 (LABEL_EXPR, void_type_node, local_label);
      FUNC2 (t, &expr);
    }

  return expr;
}