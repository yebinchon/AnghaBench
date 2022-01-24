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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static CORE_ADDR
FUNC5 (CORE_ADDR pc)
{
  /* See if we can determine the end of the prologue via the symbol table.
     If so, then return either PC, or the PC after the prologue, whichever
     is greater.  */

  CORE_ADDR post_prologue_pc = FUNC0 (pc, NULL);

  if (post_prologue_pc != 0)
    return FUNC1 (pc, post_prologue_pc);

  /* Can't determine prologue from the symbol table, need to examine
     instructions.  */

  if (FUNC4 (pc))
    return FUNC2 (pc);
  else
    return FUNC3 (pc);
}