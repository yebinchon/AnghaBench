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
struct pfifo_fast_priv {int dummy; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int PFIFO_FAST_BANDS ; 
 int /*<<< orphan*/  FUNC0 (struct pfifo_fast_priv*,int) ; 
 struct pfifo_fast_priv* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct Qdisc *qdisc, struct nlattr *opt)
{
	int prio;
	struct pfifo_fast_priv *priv = FUNC1(qdisc);

	for (prio = 0; prio < PFIFO_FAST_BANDS; prio++)
		FUNC2(FUNC0(priv, prio));

	return 0;
}