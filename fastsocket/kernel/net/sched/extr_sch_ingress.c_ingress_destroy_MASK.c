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
struct ingress_qdisc_data {int /*<<< orphan*/  filter_list; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct ingress_qdisc_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct Qdisc *sch)
{
	struct ingress_qdisc_data *p = FUNC0(sch);

	FUNC1(&p->filter_list);
}