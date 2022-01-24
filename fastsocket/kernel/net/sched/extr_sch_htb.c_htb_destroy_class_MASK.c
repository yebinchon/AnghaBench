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
struct TYPE_3__ {int /*<<< orphan*/  q; } ;
struct TYPE_4__ {TYPE_1__ leaf; } ;
struct htb_class {int /*<<< orphan*/  filter_list; int /*<<< orphan*/  ceil; int /*<<< orphan*/  rate; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; TYPE_2__ un; int /*<<< orphan*/  level; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct htb_class*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct Qdisc *sch, struct htb_class *cl)
{
	if (!cl->level) {
		FUNC0(!cl->un.leaf.q);
		FUNC3(cl->un.leaf.q);
	}
	FUNC1(&cl->bstats, &cl->rate_est);
	FUNC4(cl->rate);
	FUNC4(cl->ceil);

	FUNC5(&cl->filter_list);
	FUNC2(cl);
}