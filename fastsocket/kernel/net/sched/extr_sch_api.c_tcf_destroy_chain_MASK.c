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
struct tcf_proto {struct tcf_proto* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcf_proto*) ; 

void FUNC1(struct tcf_proto **fl)
{
	struct tcf_proto *tp;

	while ((tp = *fl) != NULL) {
		*fl = tp->next;
		FUNC0(tp);
	}
}