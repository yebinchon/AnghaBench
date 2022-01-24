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
#define  CALL 133 
#define  CONST_DOUBLE 132 
#define  CONST_INT 131 
#define  CONST_VECTOR 130 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
#define  REG 129 
#define  SUBREG 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (rtx x)
{
#ifdef STACK_REGS
  /* On register stack architectures, don't GCSE constants from the
     constant pool, as the benefits are often swamped by the overhead
     of shuffling the register stack between basic blocks.  */
  if (IS_STACK_MODE (GET_MODE (x)))
    x = avoid_constant_pool_reference (x);
#endif

  switch (FUNC0 (x))
    {
    case REG:
    case SUBREG:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case CALL:
      return 0;

    default:
      return FUNC4 (x);
    }
}