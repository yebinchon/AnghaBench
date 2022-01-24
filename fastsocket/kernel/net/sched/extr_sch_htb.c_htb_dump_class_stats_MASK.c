#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ctokens; int /*<<< orphan*/  tokens; } ;
struct TYPE_11__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_9__ {TYPE_2__* q; } ;
struct TYPE_10__ {TYPE_3__ leaf; } ;
struct htb_class {TYPE_6__ xstats; TYPE_5__ qstats; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/  ctokens; int /*<<< orphan*/  tokens; TYPE_4__ un; int /*<<< orphan*/  level; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_8__ {TYPE_1__ q; } ;

/* Variables and functions */
 int FUNC0 (struct gnet_dump*,TYPE_6__*,int) ; 
 scalar_t__ FUNC1 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct gnet_dump*,TYPE_5__*) ; 
 scalar_t__ FUNC3 (struct gnet_dump*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct Qdisc *sch, unsigned long arg, struct gnet_dump *d)
{
	struct htb_class *cl = (struct htb_class *)arg;

	if (!cl->level && cl->un.leaf.q)
		cl->qstats.qlen = cl->un.leaf.q->q.qlen;
	cl->xstats.tokens = cl->tokens;
	cl->xstats.ctokens = cl->ctokens;

	if (FUNC1(d, &cl->bstats) < 0 ||
	    FUNC3(d, &cl->rate_est) < 0 ||
	    FUNC2(d, &cl->qstats) < 0)
		return -1;

	return FUNC0(d, &cl->xstats, sizeof(cl->xstats));
}