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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  epilogue ; 
 int /*<<< orphan*/  prologue ; 

int
FUNC1 (rtx insn)
{
  if (FUNC0 (insn, &prologue))
    return 1;
  if (FUNC0 (insn, &epilogue))
    return 1;
  return 0;
}