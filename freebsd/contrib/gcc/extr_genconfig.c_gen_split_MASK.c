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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int max_insns_per_split ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (rtx split)
{
  int i;

  /* Look through the patterns that are matched
     to compute the maximum operand number.  */
  for (i = 0; i < FUNC1 (split, 0); i++)
    FUNC2 (FUNC0 (split, 0, i), 1, 0);
  /* Look at the number of insns this insn could split into.  */
  if (FUNC1 (split, 2) > max_insns_per_split)
    max_insns_per_split = FUNC1 (split, 2);
}