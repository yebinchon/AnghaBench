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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  ARRAY_REF ; 
 int /*<<< orphan*/  COND_EXPR ; 
 scalar_t__ CONSTRUCTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  GOTO_EXPR ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC14 (tree object, tree lower, tree upper,
			       tree value, tree array_elt_type,
			       tree *pre_p, bool cleared)
{
  tree loop_entry_label, loop_exit_label;
  tree var, var_type, cref;

  loop_entry_label = FUNC8 ();
  loop_exit_label = FUNC8 ();

  /* Create and initialize the index variable.  */
  var_type = FUNC2 (upper);
  var = FUNC9 (var_type, NULL);
  FUNC3 (FUNC5 (MODIFY_EXPR, var_type, var, lower), pre_p);

  /* Add the loop entry label.  */
  FUNC3 (FUNC4 (LABEL_EXPR,
				    void_type_node,
				    loop_entry_label),
			    pre_p);

  /* Build the reference.  */
  cref = FUNC7 (ARRAY_REF, array_elt_type, FUNC13 (object),
		 var, NULL_TREE, NULL_TREE);

  /* If we are a constructor, just call gimplify_init_ctor_eval to do
     the store.  Otherwise just assign value to the reference.  */

  if (FUNC1 (value) == CONSTRUCTOR)
    /* NB we might have to call ourself recursively through
       gimplify_init_ctor_eval if the value is a constructor.  */
    FUNC12 (cref, FUNC0 (value),
			     pre_p, cleared);
  else
    FUNC3 (FUNC5 (MODIFY_EXPR, FUNC2 (cref),
				      cref, value),
			      pre_p);

  /* We exit the loop when the index var is equal to the upper bound.  */
  FUNC11 (FUNC6 (COND_EXPR, void_type_node,
			    FUNC5 (EQ_EXPR, boolean_type_node,
				    var, upper),
			    FUNC4 (GOTO_EXPR,
				    void_type_node,
				    loop_exit_label),
			    NULL_TREE),
		    pre_p);

  /* Otherwise, increment the index var...  */
  FUNC3 (FUNC5 (MODIFY_EXPR, var_type, var,
				    FUNC5 (PLUS_EXPR, var_type, var,
					    FUNC10 (var_type,
							  integer_one_node))),
			    pre_p);

  /* ...and jump back to the loop entry.  */
  FUNC3 (FUNC4 (GOTO_EXPR,
				    void_type_node,
				    loop_entry_label),
			    pre_p);

  /* Add the loop exit label.  */
  FUNC3 (FUNC4 (LABEL_EXPR,
				    void_type_node,
				    loop_exit_label),
			    pre_p);
}