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
struct tcf_proto_ops {struct tcf_proto_ops* next; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  cls_mod_lock ; 
 struct tcf_proto_ops* tcf_proto_base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct tcf_proto_ops *ops)
{
	struct tcf_proto_ops *t, **tp;
	int rc = -ENOENT;

	FUNC0(&cls_mod_lock);
	for (tp = &tcf_proto_base; (t=*tp) != NULL; tp = &t->next)
		if (t == ops)
			break;

	if (!t)
		goto out;
	*tp = t->next;
	rc = 0;
out:
	FUNC1(&cls_mod_lock);
	return rc;
}