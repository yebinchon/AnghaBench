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

/* Variables and functions */
 int /*<<< orphan*/  GOTO_EXPR ; 
 scalar_t__ LABEL_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  cur_stmt_list ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  void_type_node ; 

tree
FUNC9 (tree *label_p, bool is_break)
{
  bool skip;
  tree label = *label_p;

  /* In switch statements break is sometimes stylistically used after
     a return statement.  This can lead to spurious warnings about
     control reaching the end of a non-void function when it is
     inlined.  Note that we are calling block_may_fallthru with
     language specific tree nodes; this works because
     block_may_fallthru returns true when given something it does not
     understand.  */
  skip = !FUNC3 (cur_stmt_list);

  if (!label)
    {
      if (!skip)
	*label_p = label = FUNC5 ();
    }
  else if (FUNC0 (label) == LABEL_DECL)
    ;
  else switch (FUNC1 (label))
    {
    case 0:
      if (is_break)
	FUNC6 ("break statement not within loop or switch");
      else
	FUNC6 ("continue statement not within a loop");
      return NULL_TREE;

    case 1:
      FUNC7 (is_break);
      FUNC6 ("break statement used with OpenMP for loop");
      return NULL_TREE;

    default:
      FUNC8 ();
    }

  if (skip)
    return NULL_TREE;

  return FUNC2 (FUNC4 (GOTO_EXPR, void_type_node, label));
}