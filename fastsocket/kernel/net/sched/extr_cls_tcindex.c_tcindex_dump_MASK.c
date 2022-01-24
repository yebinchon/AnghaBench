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
struct tcmsg {int tcm_handle; } ;
struct TYPE_2__ {int classid; scalar_t__ class; } ;
struct tcindex_filter_result {int /*<<< orphan*/  exts; TYPE_1__ res; } ;
struct tcindex_filter {int key; struct tcindex_filter_result result; struct tcindex_filter* next; } ;
struct tcindex_data {int hash; int shift; int fall_through; struct tcindex_filter** h; struct tcindex_filter_result* perfect; int /*<<< orphan*/  mask; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct tcindex_data* FUNC2 (struct tcf_proto*) ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_TCINDEX_CLASSID ; 
 int /*<<< orphan*/  TCA_TCINDEX_FALL_THROUGH ; 
 int /*<<< orphan*/  TCA_TCINDEX_HASH ; 
 int /*<<< orphan*/  TCA_TCINDEX_MASK ; 
 int /*<<< orphan*/  TCA_TCINDEX_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 unsigned char* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcindex_ext_map ; 

__attribute__((used)) static int FUNC10(struct tcf_proto *tp, unsigned long fh,
    struct sk_buff *skb, struct tcmsg *t)
{
	struct tcindex_data *p = FUNC2(tp);
	struct tcindex_filter_result *r = (struct tcindex_filter_result *) fh;
	unsigned char *b = FUNC7(skb);
	struct nlattr *nest;

	FUNC6("tcindex_dump(tp %p,fh 0x%lx,skb %p,t %p),p %p,r %p,b %p\n",
		 tp, fh, skb, t, p, r, b);
	FUNC6("p->perfect %p p->h %p\n", p->perfect, p->h);

	nest = FUNC4(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	if (!fh) {
		t->tcm_handle = ~0; /* whatever ... */
		FUNC1(skb, TCA_TCINDEX_HASH, p->hash);
		FUNC0(skb, TCA_TCINDEX_MASK, p->mask);
		FUNC1(skb, TCA_TCINDEX_SHIFT, p->shift);
		FUNC1(skb, TCA_TCINDEX_FALL_THROUGH, p->fall_through);
		FUNC3(skb, nest);
	} else {
		if (p->perfect) {
			t->tcm_handle = r-p->perfect;
		} else {
			struct tcindex_filter *f;
			int i;

			t->tcm_handle = 0;
			for (i = 0; !t->tcm_handle && i < p->hash; i++) {
				for (f = p->h[i]; !t->tcm_handle && f;
				     f = f->next) {
					if (&f->result == r)
						t->tcm_handle = f->key;
				}
			}
		}
		FUNC6("handle = %d\n", t->tcm_handle);
		if (r->res.class)
			FUNC1(skb, TCA_TCINDEX_CLASSID, r->res.classid);

		if (FUNC8(skb, &r->exts, &tcindex_ext_map) < 0)
			goto nla_put_failure;
		FUNC3(skb, nest);

		if (FUNC9(skb, &r->exts, &tcindex_ext_map) < 0)
			goto nla_put_failure;
	}

	return skb->len;

nla_put_failure:
	FUNC5(skb, b);
	return -1;
}