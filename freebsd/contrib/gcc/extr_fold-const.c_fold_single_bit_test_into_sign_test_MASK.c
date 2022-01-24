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
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {scalar_t__ (* signed_type ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 scalar_t__ BIT_AND_EXPR ; 
 int EQ_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GE_EXPR ; 
 int /*<<< orphan*/  LT_EXPR ; 
 int NE_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 TYPE_2__ lang_hooks ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC13 (enum tree_code code, tree arg0, tree arg1,
				     tree result_type)
{
  /* If this is testing a single bit, we can optimize the test.  */
  if ((code == NE_EXPR || code == EQ_EXPR)
      && FUNC1 (arg0) == BIT_AND_EXPR && FUNC10 (arg1)
      && FUNC9 (FUNC2 (arg0, 1)))
    {
      /* If we have (A & C) != 0 where C is the sign bit of A, convert
	 this into A < 0.  Similarly for (A & C) == 0 into A >= 0.  */
      tree arg00 = FUNC11 (FUNC2 (arg0, 0), FUNC2 (arg0, 1));

      if (arg00 != NULL_TREE
	  /* This is only a win if casting to a signed type is cheap,
	     i.e. when arg00's type is not a partial mode.  */
	  && FUNC5 (FUNC3 (arg00))
	     == FUNC0 (FUNC4 (FUNC3 (arg00))))
	{
	  tree stype = lang_hooks.types.signed_type (FUNC3 (arg00));
	  return FUNC7 (code == EQ_EXPR ? GE_EXPR : LT_EXPR,
			      result_type, FUNC8 (stype, arg00),
			      FUNC6 (stype, 0));
	}
    }

  return NULL_TREE;
}