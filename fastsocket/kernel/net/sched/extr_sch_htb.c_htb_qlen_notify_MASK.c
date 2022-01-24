#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* q; } ;
struct TYPE_8__ {TYPE_3__ leaf; } ;
struct htb_class {TYPE_4__ un; } ;
struct Qdisc {int dummy; } ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct TYPE_6__ {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct htb_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC2(struct Qdisc *sch, unsigned long arg)
{
	struct htb_class *cl = (struct htb_class *)arg;

	if (cl->un.leaf.q->q.qlen == 0)
		FUNC0(FUNC1(sch), cl);
}