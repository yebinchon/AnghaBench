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
 scalar_t__ COMPLEX_CST ; 
 scalar_t__ COMPLEX_EXPR ; 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
 scalar_t__ MULT_EXPR ; 
 scalar_t__ PLUS_EXPR ; 
 int /*<<< orphan*/  REALPART_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC9 (tree type, tree expr)
{
  tree itype = FUNC4 (type);
  tree rpart, ipart, tem;

  if (FUNC0 (expr) == COMPLEX_EXPR)
    {
      rpart = FUNC2 (expr, 0);
      ipart = FUNC2 (expr, 1);
    }
  else if (FUNC0 (expr) == COMPLEX_CST)
    {
      rpart = FUNC3 (expr);
      ipart = FUNC1 (expr);
    }
  else
    {
      expr = FUNC8 (expr);
      rpart = FUNC5 (REALPART_EXPR, itype, expr);
      ipart = FUNC5 (IMAGPART_EXPR, itype, expr);
    }

  rpart = FUNC8 (rpart);
  ipart = FUNC8 (ipart);
  tem = FUNC6 (PLUS_EXPR, itype,
		     FUNC6 (MULT_EXPR, itype, rpart, rpart),
		     FUNC6 (MULT_EXPR, itype, ipart, ipart));
  return FUNC6 (COMPLEX_EXPR, type, tem,
		      FUNC7 (itype, integer_zero_node));
}