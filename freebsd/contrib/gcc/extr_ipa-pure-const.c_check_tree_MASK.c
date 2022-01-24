#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* funct_state ;
struct TYPE_4__ {scalar_t__ pure_const_state; } ;

/* Variables and functions */
 scalar_t__ ARRAY_REF ; 
 scalar_t__ EXC_PTR_EXPR ; 
 scalar_t__ FILTER_EXPR ; 
 scalar_t__ IMAGPART_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IPA_CONST ; 
 void* IPA_NEITHER ; 
 scalar_t__ IPA_PURE ; 
 scalar_t__ REALPART_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (funct_state local, tree t, bool checking_write)
{
  if ((FUNC2 (t) == EXC_PTR_EXPR) || (FUNC2 (t) == FILTER_EXPR))
    return;

  /* Any tree which is volatile disqualifies thie function from being
     const or pure. */
  if (FUNC4 (t))
    {
      local->pure_const_state = IPA_NEITHER;
      return;
    }

  while (FUNC2 (t) == REALPART_EXPR 
	 || FUNC2 (t) == IMAGPART_EXPR
	 || FUNC6 (t))
    {
      if (FUNC2 (t) == ARRAY_REF)
	FUNC5 (local, FUNC3 (t, 1), false);
      t = FUNC3 (t, 0);
    }

  /* The bottom of an indirect reference can only be read, not
     written.  */
  if (FUNC0 (t))
    {
      FUNC7 (local, FUNC3 (t, 0), false);
      
      /* Any indirect reference that occurs on the lhs
	 disqualifies the function from being pure or const. Any
	 indirect reference that occurs on the rhs disqualifies the
	 function from being const.  */
      if (checking_write) 
	{
	  local->pure_const_state = IPA_NEITHER;
	  return;
	}
      else if (local->pure_const_state == IPA_CONST)
	local->pure_const_state = IPA_PURE;
    }

  if (FUNC1 (t))
    FUNC5 (local, t, checking_write);
}