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
struct flow_filter {int /*<<< orphan*/  ematches; int /*<<< orphan*/  exts; int /*<<< orphan*/  perturb_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_filter*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tcf_proto *tp, struct flow_filter *f)
{
	FUNC0(&f->perturb_timer);
	FUNC3(tp, &f->exts);
	FUNC2(tp, &f->ematches);
	FUNC1(f);
}