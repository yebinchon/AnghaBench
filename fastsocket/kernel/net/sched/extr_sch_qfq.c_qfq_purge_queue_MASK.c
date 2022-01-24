#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qfq_class {TYPE_2__* qdisc; } ;
struct TYPE_4__ {unsigned int qlen; } ;
struct TYPE_5__ {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct qfq_class *cl)
{
	unsigned int len = cl->qdisc->q.qlen;

	FUNC0(cl->qdisc);
	FUNC1(cl->qdisc, len);
}