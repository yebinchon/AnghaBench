#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* dt_bufarg; int /*<<< orphan*/ * dt_bufhdlr; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dtrace_handle_buffered_f ;

/* Variables and functions */
 int /*<<< orphan*/  EALREADY ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC1(dtrace_hdl_t *dtp, dtrace_handle_buffered_f *hdlr,
    void *arg)
{
	if (dtp->dt_bufhdlr != NULL)
		return (FUNC0(dtp, EALREADY));

	if (hdlr == NULL)
		return (FUNC0(dtp, EINVAL));

	dtp->dt_bufhdlr = hdlr;
	dtp->dt_bufarg = arg;

	return (0);
}