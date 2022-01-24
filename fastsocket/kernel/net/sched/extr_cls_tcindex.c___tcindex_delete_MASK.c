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
struct TYPE_2__ {int /*<<< orphan*/  class; } ;
struct tcindex_filter_result {int /*<<< orphan*/  exts; TYPE_1__ res; } ;
struct tcindex_filter {struct tcindex_filter* next; struct tcindex_filter_result result; } ;
struct tcindex_data {int hash; struct tcindex_filter** h; scalar_t__ perfect; } ;
struct tcf_proto {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct tcindex_data* FUNC0 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcindex_filter*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct tcf_proto*,unsigned long,struct tcindex_data*,struct tcindex_filter*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_proto*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(struct tcf_proto *tp, unsigned long arg, int lock)
{
	struct tcindex_data *p = FUNC0(tp);
	struct tcindex_filter_result *r = (struct tcindex_filter_result *) arg;
	struct tcindex_filter *f = NULL;

	FUNC2("tcindex_delete(tp %p,arg 0x%lx),p %p,f %p\n", tp, arg, p, f);
	if (p->perfect) {
		if (!r->res.class)
			return -ENOENT;
	} else {
		int i;
		struct tcindex_filter **walk = NULL;

		for (i = 0; i < p->hash; i++)
			for (walk = p->h+i; *walk; walk = &(*walk)->next)
				if (&(*walk)->result == r)
					goto found;
		return -ENOENT;

found:
		f = *walk;
		if (lock)
			FUNC4(tp);
		*walk = f->next;
		if (lock)
			FUNC5(tp);
	}
	FUNC6(tp, &r->res);
	FUNC3(tp, &r->exts);
	FUNC1(f);
	return 0;
}