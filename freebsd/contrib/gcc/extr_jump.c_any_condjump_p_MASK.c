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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IF_THEN_ELSE ; 
 int LABEL_REF ; 
 int PC ; 
 int RETURN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (rtx insn)
{
  rtx x = FUNC3 (insn);
  enum rtx_code a, b;

  if (!x)
    return 0;
  if (FUNC0 (FUNC1 (x)) != IF_THEN_ELSE)
    return 0;

  a = FUNC0 (FUNC2 (FUNC1 (x), 1));
  b = FUNC0 (FUNC2 (FUNC1 (x), 2));

  return ((b == PC && (a == LABEL_REF || a == RETURN))
	  || (a == PC && (b == LABEL_REF || b == RETURN)));
}