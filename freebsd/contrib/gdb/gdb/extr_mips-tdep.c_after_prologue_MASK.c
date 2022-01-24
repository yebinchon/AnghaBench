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
struct symtab_and_line {scalar_t__ end; } ;
typedef  scalar_t__ mips_extra_func_info_t ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ SP_REGNUM ; 
 struct symtab_and_line FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC5 (CORE_ADDR pc, mips_extra_func_info_t proc_desc)
{
  struct symtab_and_line sal;
  CORE_ADDR func_addr, func_end;

  /* Pass cur_frame == 0 to find_proc_desc.  We should not attempt
     to read the stack pointer from the current machine state, because
     the current machine state has nothing to do with the information
     we need from the proc_desc; and the process may or may not exist
     right now.  */
  if (!proc_desc)
    proc_desc = FUNC4 (pc, NULL, 0);

  if (proc_desc)
    {
      /* If function is frameless, then we need to do it the hard way.  I
         strongly suspect that frameless always means prologueless... */
      if (FUNC1 (proc_desc) == SP_REGNUM
	  && FUNC0 (proc_desc) == 0)
	return 0;
    }

  if (!FUNC3 (pc, NULL, &func_addr, &func_end))
    return 0;			/* Unknown */

  sal = FUNC2 (func_addr, 0);

  if (sal.end < func_end)
    return sal.end;

  /* The line after the prologue is after the end of the function.  In this
     case, tell the caller to find the prologue the hard way.  */

  return 0;
}