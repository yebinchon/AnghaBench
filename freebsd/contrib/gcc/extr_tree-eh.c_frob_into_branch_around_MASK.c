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
 int /*<<< orphan*/  LABEL_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC5 (tree *tp, tree lab, tree over)
{
  tree x, op1;

  op1 = FUNC0 (*tp, 1);
  *tp = FUNC0 (*tp, 0);

  if (FUNC2 (*tp))
    {
      if (!over)
	over = FUNC4 ();
      x = FUNC3 (GOTO_EXPR, void_type_node, over);
      FUNC1 (x, tp);
    }

  if (lab)
    {
      x = FUNC3 (LABEL_EXPR, void_type_node, lab);
      FUNC1 (x, tp);
    }

  FUNC1 (op1, tp);

  if (over)
    {
      x = FUNC3 (LABEL_EXPR, void_type_node, over);
      FUNC1 (x, tp);
    }
}