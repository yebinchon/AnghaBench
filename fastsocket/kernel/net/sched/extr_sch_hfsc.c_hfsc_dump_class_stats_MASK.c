#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xstats ;
struct tc_hfsc_stats {int /*<<< orphan*/  rtwork; int /*<<< orphan*/  work; int /*<<< orphan*/  period; int /*<<< orphan*/  level; } ;
struct TYPE_6__ {int /*<<< orphan*/  qlen; } ;
struct hfsc_class {TYPE_3__ qstats; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/  cl_cumul; int /*<<< orphan*/  cl_total; int /*<<< orphan*/  cl_vtperiod; int /*<<< orphan*/  level; TYPE_2__* qdisc; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_5__ {TYPE_1__ q; } ;

/* Variables and functions */
 int FUNC0 (struct gnet_dump*,struct tc_hfsc_stats*,int) ; 
 scalar_t__ FUNC1 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct gnet_dump*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (struct gnet_dump*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct Qdisc *sch, unsigned long arg,
	struct gnet_dump *d)
{
	struct hfsc_class *cl = (struct hfsc_class *)arg;
	struct tc_hfsc_stats xstats;

	cl->qstats.qlen = cl->qdisc->q.qlen;
	xstats.level   = cl->level;
	xstats.period  = cl->cl_vtperiod;
	xstats.work    = cl->cl_total;
	xstats.rtwork  = cl->cl_cumul;

	if (FUNC1(d, &cl->bstats) < 0 ||
	    FUNC3(d, &cl->rate_est) < 0 ||
	    FUNC2(d, &cl->qstats) < 0)
		return -1;

	return FUNC0(d, &xstats, sizeof(xstats));
}