#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  ps_err_e ;
typedef  scalar_t__ prgregset_t ;
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  TYPE_1__* gdb_ps_prochandle_t ;
typedef  int /*<<< orphan*/  gdb_gregset_t ;
struct TYPE_3__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_OK ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 struct cleanup* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

ps_err_e
FUNC5 (gdb_ps_prochandle_t ph, lwpid_t lwpid, const prgregset_t gregset)
{
  struct cleanup *old_chain = FUNC2 ();

  inferior_ptid = FUNC0 (lwpid, ph->pid);

  /* FIXME: We should really make supply_gregset const-correct.  */
  FUNC3 ((gdb_gregset_t *) gregset);
  FUNC4 (-1);

  FUNC1 (old_chain);
  return PS_OK;
}