#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pfifo_fast_priv {scalar_t__ bitmap; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct TYPE_3__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;

/* Variables and functions */
 int PFIFO_FAST_BANDS ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pfifo_fast_priv*,int) ; 
 struct pfifo_fast_priv* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC3(struct Qdisc* qdisc)
{
	int prio;
	struct pfifo_fast_priv *priv = FUNC2(qdisc);

	for (prio = 0; prio < PFIFO_FAST_BANDS; prio++)
		FUNC0(qdisc, FUNC1(priv, prio));

	priv->bitmap = 0;
	qdisc->qstats.backlog = 0;
	qdisc->q.qlen = 0;
}