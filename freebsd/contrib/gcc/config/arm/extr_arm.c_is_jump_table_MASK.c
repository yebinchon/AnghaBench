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
 scalar_t__ ADDR_DIFF_VEC ; 
 scalar_t__ ADDR_VEC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ JUMP_INSN ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static rtx
FUNC4 (rtx insn)
{
  rtx table;

  if (FUNC0 (insn) == JUMP_INSN
      && FUNC1 (insn) != NULL
      && ((table = FUNC3 (FUNC1 (insn)))
	  == FUNC3 (insn))
      && table != NULL
      && FUNC0 (table) == JUMP_INSN
      && (FUNC0 (FUNC2 (table)) == ADDR_VEC
	  || FUNC0 (FUNC2 (table)) == ADDR_DIFF_VEC))
    return table;

  return NULL_RTX;
}