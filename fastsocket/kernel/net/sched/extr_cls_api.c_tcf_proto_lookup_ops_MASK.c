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
struct tcf_proto_ops {int /*<<< orphan*/  owner; int /*<<< orphan*/  kind; struct tcf_proto_ops* next; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cls_mod_lock ; 
 scalar_t__ FUNC0 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcf_proto_ops* tcf_proto_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tcf_proto_ops *FUNC4(struct nlattr *kind)
{
	struct tcf_proto_ops *t = NULL;

	if (kind) {
		FUNC1(&cls_mod_lock);
		for (t = tcf_proto_base; t; t = t->next) {
			if (FUNC0(kind, t->kind) == 0) {
				if (!FUNC3(t->owner))
					t = NULL;
				break;
			}
		}
		FUNC2(&cls_mod_lock);
	}
	return t;
}