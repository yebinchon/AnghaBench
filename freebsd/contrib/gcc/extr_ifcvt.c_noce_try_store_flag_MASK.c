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
struct noce_if_info {scalar_t__ b; scalar_t__ a; scalar_t__ x; int /*<<< orphan*/  insn_a; int /*<<< orphan*/  jump; int /*<<< orphan*/  cond; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 int FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ STORE_FLAG_VALUE ; 
 int TRUE ; 
 scalar_t__ UNKNOWN ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct noce_if_info*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct noce_if_info*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10 (struct noce_if_info *if_info)
{
  int reversep;
  rtx target, seq;

  if (FUNC0 (if_info->b) == CONST_INT
      && FUNC2 (if_info->b) == STORE_FLAG_VALUE
      && if_info->a == const0_rtx)
    reversep = 0;
  else if (if_info->b == const0_rtx
	   && FUNC0 (if_info->a) == CONST_INT
	   && FUNC2 (if_info->a) == STORE_FLAG_VALUE
	   && (FUNC8 (if_info->cond, if_info->jump)
	       != UNKNOWN))
    reversep = 1;
  else
    return FALSE;

  FUNC9 ();

  target = FUNC7 (if_info, if_info->x, reversep, 0);
  if (target)
    {
      if (target != if_info->x)
	FUNC6 (if_info->x, target);

      seq = FUNC4 (if_info);
      if (! seq)
	return FALSE;

      FUNC3 (seq, if_info->jump,
			       FUNC1 (if_info->insn_a));
      return TRUE;
    }
  else
    {
      FUNC5 ();
      return FALSE;
    }
}