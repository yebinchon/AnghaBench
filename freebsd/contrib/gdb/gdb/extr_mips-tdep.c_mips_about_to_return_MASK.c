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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (CORE_ADDR pc)
{
  if (FUNC1 (pc))
    /* This mips16 case isn't necessarily reliable.  Sometimes the compiler
       generates a "jr $ra"; other times it generates code to load
       the return address from the stack to an accessible register (such
       as $a3), then a "jr" using that register.  This second case
       is almost impossible to distinguish from an indirect jump
       used for switch statements, so we don't even try.  */
    return FUNC0 (pc) == 0xe820;	/* jr $ra */
  else
    return FUNC0 (pc) == 0x3e00008;	/* jr $ra */
}