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
struct loop {int dummy; } ;

/* Variables and functions */
#define  ASSERT_EXPR 135 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONVERT_EXPR 134 
#define  MINUS_EXPR 133 
#define  MULT_EXPR 132 
#define  NEGATE_EXPR 131 
#define  NOP_EXPR 130 
#define  PLUS_EXPR 129 
#define  SSA_NAME 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_minus_one_node ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC10 (struct loop *loop, tree at_stmt,
			   tree opnd1, tree type)
{
  tree res, opnd10, opnd11, chrec10, chrec11;

  if (FUNC9 (opnd1))
    return FUNC4 (type, opnd1, at_stmt);

  switch (FUNC1 (opnd1))
    {
    case PLUS_EXPR:
      opnd10 = FUNC2 (opnd1, 0);
      opnd11 = FUNC2 (opnd1, 1);
      chrec10 = FUNC3 (loop, opnd10);
      chrec11 = FUNC3 (loop, opnd11);
      chrec10 = FUNC4 (type, chrec10, at_stmt);
      chrec11 = FUNC4 (type, chrec11, at_stmt);
      res = FUNC7 (type, chrec10, chrec11);
      break;
      
    case MINUS_EXPR:
      opnd10 = FUNC2 (opnd1, 0);
      opnd11 = FUNC2 (opnd1, 1);
      chrec10 = FUNC3 (loop, opnd10);
      chrec11 = FUNC3 (loop, opnd11);
      chrec10 = FUNC4 (type, chrec10, at_stmt);
      chrec11 = FUNC4 (type, chrec11, at_stmt);
      res = FUNC5 (type, chrec10, chrec11);
      break;

    case NEGATE_EXPR:
      opnd10 = FUNC2 (opnd1, 0);
      chrec10 = FUNC3 (loop, opnd10);
      chrec10 = FUNC4 (type, chrec10, at_stmt);
      /* TYPE may be integer, real or complex, so use fold_convert.  */
      res = FUNC6 (type, chrec10,
				 FUNC8 (type, integer_minus_one_node));
      break;

    case MULT_EXPR:
      opnd10 = FUNC2 (opnd1, 0);
      opnd11 = FUNC2 (opnd1, 1);
      chrec10 = FUNC3 (loop, opnd10);
      chrec11 = FUNC3 (loop, opnd11);
      chrec10 = FUNC4 (type, chrec10, at_stmt);
      chrec11 = FUNC4 (type, chrec11, at_stmt);
      res = FUNC6 (type, chrec10, chrec11);
      break;
      
    case SSA_NAME:
      res = FUNC4 (type, FUNC3 (loop, opnd1),
			   at_stmt);
      break;

    case ASSERT_EXPR:
      opnd10 = FUNC0 (opnd1);
      res = FUNC4 (type, FUNC3 (loop, opnd10),
			   at_stmt);
      break;
      
    case NOP_EXPR:
    case CONVERT_EXPR:
      opnd10 = FUNC2 (opnd1, 0);
      chrec10 = FUNC3 (loop, opnd10);
      res = FUNC4 (type, chrec10, at_stmt);
      break;
      
    default:
      res = chrec_dont_know;
      break;
    }
  
  return res;
}