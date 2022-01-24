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
 int EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_INT ; 
 int NE ; 
 int /*<<< orphan*/ * cmp_operands ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC6 (enum rtx_code code, rtx target)
{
  if (FUNC1 (FUNC0 (cmp_operands[0])) != MODE_INT)
    return false;

  target = FUNC2 (FUNC0 (cmp_operands[0]), target);
  if (code == EQ || code == NE)
    {
      rtx zie = FUNC5 (cmp_operands[0], cmp_operands[1]);
      FUNC3 (code, target, zie, const0_rtx);
    }
  else
    FUNC4 (code, 0, target,
			      cmp_operands[0], cmp_operands[1]);
  return true;
}