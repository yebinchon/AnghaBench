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
struct tcf_result {int /*<<< orphan*/  classid; scalar_t__ class; } ;
struct tcindex_filter_result {int /*<<< orphan*/  exts; struct tcf_result res; } ;
struct tcindex_data {int mask; int shift; int /*<<< orphan*/  fall_through; } ;
struct tcf_proto {TYPE_1__* q; } ;
struct sk_buff {int tc_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 struct tcindex_data* FUNC0 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sk_buff*,...) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,struct tcf_result*) ; 
 struct tcindex_filter_result* FUNC5 (struct tcindex_data*,int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct tcf_proto *tp,
			    struct tcf_result *res)
{
	struct tcindex_data *p = FUNC0(tp);
	struct tcindex_filter_result *f;
	int key = (skb->tc_index & p->mask) >> p->shift;

	FUNC3("tcindex_classify(skb %p,tp %p,res %p),p %p\n",
		 skb, tp, res, p);

	f = FUNC5(p, key);
	if (!f) {
		if (!p->fall_through)
			return -1;
		res->classid = FUNC2(FUNC1(tp->q->handle), key);
		res->class = 0;
		FUNC3("alg 0x%x\n", res->classid);
		return 0;
	}
	*res = f->res;
	FUNC3("map 0x%x\n", res->classid);

	return FUNC4(skb, &f->exts, res);
}