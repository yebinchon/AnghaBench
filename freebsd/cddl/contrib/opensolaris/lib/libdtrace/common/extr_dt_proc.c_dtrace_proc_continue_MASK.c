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
struct ps_prochandle {int dummy; } ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ps_prochandle*) ; 

void
FUNC1(dtrace_hdl_t *dtp, struct ps_prochandle *P)
{
	FUNC0(dtp, P);
}