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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ no_line_numbers ; 

__attribute__((used)) static rtx
FUNC3 (rtx insn)
{
  if (no_line_numbers)
    return 0;

  for (; insn; insn = FUNC2 (insn))
    if (FUNC1 (insn)
	&& FUNC0 (insn) >= 0)
      break;

  return insn;
}