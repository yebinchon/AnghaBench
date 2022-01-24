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
struct tcf_proto {scalar_t__ root; } ;
struct fw_head {struct fw_filter** ht; } ;
struct fw_filter {struct fw_filter* next; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct tcf_proto*,struct fw_filter*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*) ; 

__attribute__((used)) static int FUNC4(struct tcf_proto *tp, unsigned long arg)
{
	struct fw_head *head = (struct fw_head*)tp->root;
	struct fw_filter *f = (struct fw_filter*)arg;
	struct fw_filter **fp;

	if (head == NULL || f == NULL)
		goto out;

	for (fp=&head->ht[FUNC1(f->id)]; *fp; fp = &(*fp)->next) {
		if (*fp == f) {
			FUNC2(tp);
			*fp = f->next;
			FUNC3(tp);
			FUNC0(tp, f);
			return 0;
		}
	}
out:
	return -EINVAL;
}