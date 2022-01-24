#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  equiv; } ;
typedef  TYPE_1__ value_range_t ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VR_RANGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void
FUNC8 (value_range_t *vr, tree expr)
{
  bool sop = false;
  tree val = FUNC7 (expr, false, &sop);

  /* A disadvantage of using a special infinity as an overflow
     representation is that we lose the ability to record overflow
     when we don't have an infinity.  So we have to ignore a result
     which relies on overflow.  */

  if (val && !FUNC3 (val) && !sop)
    {
      /* Since this expression was found on the RHS of an assignment,
	 its type may be different from _Bool.  Convert VAL to EXPR's
	 type.  */
      val = FUNC1 (FUNC0 (expr), val);
      if (FUNC2 (val))
	FUNC5 (vr, val, vr->equiv);
      else
	FUNC4 (vr, VR_RANGE, val, val, vr->equiv);
    }
  else
    FUNC6 (vr);
}