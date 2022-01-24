#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ps_prochandle {int dummy; } ;
typedef  int /*<<< orphan*/  proc_child_func ;
struct TYPE_7__ {int /*<<< orphan*/  dt_macros; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_8__ {scalar_t__ di_id; } ;
typedef  TYPE_2__ dt_ident_t ;
struct TYPE_9__ {scalar_t__ pr_pid; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (struct ps_prochandle*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ps_prochandle* FUNC2 (TYPE_1__*,char const*,char* const*,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC3 (struct ps_prochandle*) ; 

struct ps_prochandle *
FUNC4(dtrace_hdl_t *dtp, const char *file, char *const *argv,
    proc_child_func *pcf, void *child_arg)
{
	dt_ident_t *idp = FUNC1(dtp->dt_macros, "target");
	struct ps_prochandle *P = FUNC2(dtp, file, argv, pcf, child_arg);

	if (P != NULL && idp != NULL && idp->di_id == 0) {
#ifdef illumos
		idp->di_id = Pstatus(P)->pr_pid; /* $target = created pid */
#else
		idp->di_id = FUNC3(P); /* $target = created pid */
#endif
	}

	return (P);
}