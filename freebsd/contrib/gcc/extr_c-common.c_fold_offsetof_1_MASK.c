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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
#define  ARRAY_REF 136 
 int BITS_PER_UNIT ; 
#define  CALL_EXPR 135 
#define  COMPONENT_REF 134 
#define  COMPOUND_EXPR 133 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  ERROR_MARK 132 
#define  INDIRECT_REF 131 
#define  INTEGER_CST 130 
 int MINUS_EXPR ; 
 int MULT_EXPR ; 
 int /*<<< orphan*/  NEGATE_EXPR ; 
#define  NOP_EXPR 129 
 int PLUS_EXPR ; 
 int const FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
#define  VAR_DECL 128 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ size_zero_node ; 
 int /*<<< orphan*/  sizetype ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tree
FUNC17 (tree expr, tree stop_ref)
{
  enum tree_code code = PLUS_EXPR;
  tree base, off, t;

  if (expr == stop_ref && FUNC3 (expr) != ERROR_MARK)
    return size_zero_node;

  switch (FUNC3 (expr))
    {
    case ERROR_MARK:
      return expr;

    case VAR_DECL:
      FUNC8 ("cannot apply %<offsetof%> to static data member %qD", expr);
      return error_mark_node;

    case CALL_EXPR:
      FUNC8 ("cannot apply %<offsetof%> when %<operator[]%> is overloaded");
      return error_mark_node;

    case INTEGER_CST:
      FUNC10 (FUNC12 (expr));
      return size_zero_node;

    case NOP_EXPR:
    case INDIRECT_REF:
      base = FUNC17 (FUNC4 (expr, 0), stop_ref);
      FUNC10 (base == error_mark_node || base == size_zero_node);
      return base;

    case COMPONENT_REF:
      base = FUNC17 (FUNC4 (expr, 0), stop_ref);
      if (base == error_mark_node)
	return base;

      t = FUNC4 (expr, 1);
      if (FUNC0 (t))
	{
	  FUNC8 ("attempt to take address of bit-field structure "
		 "member %qD", t);
	  return error_mark_node;
	}
      off = FUNC13 (PLUS_EXPR, FUNC2 (t),
			FUNC14 (FUNC16 (FUNC1 (t), 1)
				  / BITS_PER_UNIT));
      break;

    case ARRAY_REF:
      base = FUNC17 (FUNC4 (expr, 0), stop_ref);
      if (base == error_mark_node)
	return base;

      t = FUNC4 (expr, 1);
      if (FUNC3 (t) == INTEGER_CST && FUNC15 (t) < 0)
	{
	  code = MINUS_EXPR;
	  t = FUNC9 (NEGATE_EXPR, FUNC5 (t), t);
	}
      t = FUNC7 (sizetype, t);
      off = FUNC13 (MULT_EXPR, FUNC6 (FUNC5 (expr)), t);
      break;

    case COMPOUND_EXPR:
      /* Handle static members of volatile structs.  */
      t = FUNC4 (expr, 1);
      FUNC10 (FUNC3 (t) == VAR_DECL);
      return FUNC17 (t, stop_ref);

    default:
      FUNC11 ();
    }

  return FUNC13 (code, base, off);
}