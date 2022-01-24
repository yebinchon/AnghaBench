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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC3 (tree arglist, rtx target, enum machine_mode mode)
{
  if (FUNC2 (arglist,
			POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    {
      tree result = FUNC1 (arglist);
      if (result)
	return FUNC0 (result, target, mode, EXPAND_NORMAL);
    }
  return 0;
}