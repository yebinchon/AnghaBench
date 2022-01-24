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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  MINUS_EXPR 130 
#define  NOP_EXPR 129 
#define  PLUS_EXPR 128 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC6 (int const,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static tree
FUNC8 (tree exp, tree decl)
{
  tree t;

  if (!FUNC0 (FUNC3 (exp))
      || FUNC4 (FUNC3 (exp)) < FUNC4 (FUNC3 (decl)))
    return error_mark_node;

  if (exp == decl)
    return FUNC5 (FUNC3 (exp), 0);

  switch (FUNC1 (exp))
    {
    case NOP_EXPR:
      t = FUNC8 (FUNC2 (exp, 0), decl);
      if (t != error_mark_node)
        return FUNC7 (FUNC3 (exp), t);
      break;
    case MINUS_EXPR:
      t = FUNC8 (FUNC2 (exp, 0), decl);
      if (t != error_mark_node)
        return FUNC6 (MINUS_EXPR, FUNC3 (exp), t, FUNC2 (exp, 1));
      break;
    case PLUS_EXPR:
      t = FUNC8 (FUNC2 (exp, 0), decl);
      if (t != error_mark_node)
        return FUNC6 (PLUS_EXPR, FUNC3 (exp), t, FUNC2 (exp, 1));
      t = FUNC8 (FUNC2 (exp, 1), decl);
      if (t != error_mark_node)
        return FUNC6 (PLUS_EXPR, FUNC3 (exp), FUNC2 (exp, 0), t);
      break;
    default:
      break;
    }

  return error_mark_node;
}