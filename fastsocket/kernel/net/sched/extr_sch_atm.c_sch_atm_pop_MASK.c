#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct atm_vcc {int dummy; } ;
struct atm_qdisc_data {int /*<<< orphan*/  task; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;struct atm_qdisc_data* parent; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct atm_vcc*,struct sk_buff*,struct atm_qdisc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct atm_vcc *vcc, struct sk_buff *skb)
{
	struct atm_qdisc_data *p = FUNC0(vcc)->parent;

	FUNC1("sch_atm_pop(vcc %p,skb %p,[qdisc %p])\n", vcc, skb, p);
	FUNC0(vcc)->old_pop(vcc, skb);
	FUNC3(&p->task);
}