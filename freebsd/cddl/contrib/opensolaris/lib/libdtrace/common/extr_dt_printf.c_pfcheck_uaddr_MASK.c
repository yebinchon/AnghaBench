#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dt_macros; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_7__ {TYPE_1__* pfv_dtp; } ;
typedef  TYPE_2__ dt_pfargv_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
typedef  int /*<<< orphan*/  dt_node_t ;
struct TYPE_8__ {scalar_t__ di_id; } ;
typedef  TYPE_3__ dt_ident_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
	dtrace_hdl_t *dtp = pfv->pfv_dtp;
	dt_ident_t *idp = FUNC0(dtp->dt_macros, "target");

	if (FUNC3(dnp))
		return (1);

	if (idp == NULL || idp->di_id == 0)
		return (0);

	return (FUNC2(dnp) || FUNC1(dnp));
}