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
struct dwarf_expr_baton {int /*<<< orphan*/  frame; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ *,int*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC5 (void *baton, int dwarf_regnum)
{
  struct dwarf_expr_baton *debaton = (struct dwarf_expr_baton *) baton;
  CORE_ADDR result, save_addr;
  enum lval_type lval_type;
  char *buf;
  int optimized, regnum, realnum, regsize;

  regnum = FUNC0 (dwarf_regnum);
  regsize = FUNC4 (current_gdbarch, regnum);
  buf = (char *) FUNC1 (regsize);

  FUNC3 (debaton->frame, regnum, &optimized, &lval_type, &save_addr,
		  &realnum, buf);
  /* NOTE: cagney/2003-05-22: This extract is assuming that a DWARF 2
     address is always unsigned.  That may or may not be true.  */
  result = FUNC2 (buf, regsize);

  return result;
}