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

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

const char *
FUNC4 (rtx *operands)
{
  rtx reg;
  rtx offset;
  rtx wcgr;
  rtx sum;

  if (FUNC0 (operands [1]) != MEM
      || FUNC0 (sum = FUNC2 (operands [1], 0)) != PLUS
      || FUNC0 (reg = FUNC2 (sum, 0)) != REG
      || FUNC0 (offset = FUNC2 (sum, 1)) != CONST_INT
      || ((FUNC1 (offset) < 1024) && (FUNC1 (offset) > -1024)))
    return "wldrw%?\t%0, %1";

  /* Fix up an out-of-range load of a GR register.  */
  FUNC3 ("str%?\t%0, [sp, #-4]!\t@ Start of GR load expansion", & reg);
  wcgr = operands[0];
  operands[0] = reg;
  FUNC3 ("ldr%?\t%0, %1", operands);

  operands[0] = wcgr;
  operands[1] = reg;
  FUNC3 ("tmcr%?\t%0, %1", operands);
  FUNC3 ("ldr%?\t%0, [sp], #4\t@ End of GR load expansion", & reg);

  return "";
}