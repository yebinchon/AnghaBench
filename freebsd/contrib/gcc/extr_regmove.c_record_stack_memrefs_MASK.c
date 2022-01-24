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
struct record_stack_memrefs_data {int /*<<< orphan*/  memlist; int /*<<< orphan*/  insn; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  MEM 129 
#define  REG 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STACK_POINTER_REGNUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

__attribute__((used)) static int
FUNC5 (rtx *xp, void *data)
{
  rtx x = *xp;
  struct record_stack_memrefs_data *d =
    (struct record_stack_memrefs_data *) data;
  if (!x)
    return 0;
  switch (FUNC0 (x))
    {
    case MEM:
      if (!FUNC3 (stack_pointer_rtx, x))
	return -1;
      /* We are not able to handle correctly all possible memrefs containing
         stack pointer, so this check is necessary.  */
      if (FUNC4 (x))
	{
	  d->memlist = FUNC2 (d->insn, xp, d->memlist);
	  return -1;
	}
      return 1;
    case REG:
      /* ??? We want be able to handle non-memory stack pointer
	 references later.  For now just discard all insns referring to
	 stack pointer outside mem expressions.  We would probably
	 want to teach validate_replace to simplify expressions first.

	 We can't just compare with STACK_POINTER_RTX because the
	 reference to the stack pointer might be in some other mode.
	 In particular, an explicit clobber in an asm statement will
	 result in a QImode clobber.  */
      if (FUNC1 (x) == STACK_POINTER_REGNUM)
	return 1;
      break;
    default:
      break;
    }
  return 0;
}