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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (rtx insn1, rtx insn2, int* len, int* cost)
{
  rtx x1;
  rtx x2;

  x1 = insn1;
  x2 = insn2;
  *len = 0;
  *cost = 0;
  while (x1 && x2 && (x1 != insn2) && (x2 != insn1)
         && FUNC3 (FUNC0 (x1), FUNC0 (x2)))
    {
      (*len)++;
      (*cost) += FUNC1 (x1);
      x1 = FUNC2 (x1);
      x2 = FUNC2 (x2);
    }
}