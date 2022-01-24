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
struct tcf_proto {int dummy; } ;
struct flow_filter {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcf_proto*,struct flow_filter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*) ; 

__attribute__((used)) static int FUNC4(struct tcf_proto *tp, unsigned long arg)
{
	struct flow_filter *f = (struct flow_filter *)arg;

	FUNC2(tp);
	FUNC1(&f->list);
	FUNC3(tp);
	FUNC0(tp, f);
	return 0;
}