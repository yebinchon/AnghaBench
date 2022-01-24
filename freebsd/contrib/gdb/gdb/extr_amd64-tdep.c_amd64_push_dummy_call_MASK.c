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
struct value {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  AMD64_RBP_REGNUM ; 
 int /*<<< orphan*/  AMD64_RDI_REGNUM ; 
 int /*<<< orphan*/  AMD64_RSP_REGNUM ; 
 int FUNC0 (struct regcache*,int,struct value**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC4 (struct gdbarch *gdbarch, CORE_ADDR func_addr,
		       struct regcache *regcache, CORE_ADDR bp_addr,
		       int nargs, struct value **args,	CORE_ADDR sp,
		       int struct_return, CORE_ADDR struct_addr)
{
  char buf[8];

  /* Pass arguments.  */
  sp = FUNC0 (regcache, nargs, args, sp, struct_return);

  /* Pass "hidden" argument".  */
  if (struct_return)
    {
      FUNC2 (buf, 8, struct_addr);
      FUNC1 (regcache, AMD64_RDI_REGNUM, buf);
    }

  /* Store return address.  */
  sp -= 8;
  FUNC2 (buf, 8, bp_addr);
  FUNC3 (sp, buf, 8);

  /* Finally, update the stack pointer...  */
  FUNC2 (buf, 8, sp);
  FUNC1 (regcache, AMD64_RSP_REGNUM, buf);

  /* ...and fake a frame pointer.  */
  FUNC1 (regcache, AMD64_RBP_REGNUM, buf);

  return sp + 16;
}