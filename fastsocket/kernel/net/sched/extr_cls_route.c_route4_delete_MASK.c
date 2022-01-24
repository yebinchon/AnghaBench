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
struct tcf_proto {int /*<<< orphan*/  q; scalar_t__ root; } ;
struct route4_head {int /*<<< orphan*/ ** table; } ;
struct route4_filter {unsigned int handle; int /*<<< orphan*/  id; struct route4_filter* next; struct route4_bucket* bkt; } ;
struct route4_bucket {struct route4_filter** ht; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct route4_bucket*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,struct route4_filter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct route4_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_proto*) ; 
 size_t FUNC6 (unsigned int) ; 

__attribute__((used)) static int FUNC7(struct tcf_proto *tp, unsigned long arg)
{
	struct route4_head *head = (struct route4_head*)tp->root;
	struct route4_filter **fp, *f = (struct route4_filter*)arg;
	unsigned h = 0;
	struct route4_bucket *b;
	int i;

	if (!head || !f)
		return -EINVAL;

	h = f->handle;
	b = f->bkt;

	for (fp = &b->ht[FUNC0(h>>16)]; *fp; fp = &(*fp)->next) {
		if (*fp == f) {
			FUNC4(tp);
			*fp = f->next;
			FUNC5(tp);

			FUNC3(tp->q, head, f->id);
			FUNC2(tp, f);

			/* Strip tree */

			for (i=0; i<=32; i++)
				if (b->ht[i])
					return 0;

			/* OK, session has no flows */
			FUNC4(tp);
			head->table[FUNC6(h)] = NULL;
			FUNC5(tp);

			FUNC1(b);
			return 0;
		}
	}
	return 0;
}