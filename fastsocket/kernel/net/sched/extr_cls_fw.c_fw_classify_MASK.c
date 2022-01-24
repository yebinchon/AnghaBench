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
typedef  int u32 ;
struct tcf_result {int classid; scalar_t__ class; } ;
struct tcf_proto {TYPE_1__* q; scalar_t__ root; } ;
struct sk_buff {int mark; } ;
struct fw_head {int mask; struct fw_filter** ht; } ;
struct fw_filter {int id; int /*<<< orphan*/  exts; int /*<<< orphan*/  indev; struct tcf_result res; struct fw_filter* next; } ;
struct TYPE_2__ {int handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ *,struct tcf_result*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct tcf_proto *tp,
			  struct tcf_result *res)
{
	struct fw_head *head = (struct fw_head*)tp->root;
	struct fw_filter *f;
	int r;
	u32 id = skb->mark;

	if (head != NULL) {
		id &= head->mask;
		for (f=head->ht[FUNC1(id)]; f; f=f->next) {
			if (f->id == id) {
				*res = f->res;
#ifdef CONFIG_NET_CLS_IND
				if (!tcf_match_indev(skb, f->indev))
					continue;
#endif /* CONFIG_NET_CLS_IND */
				r = FUNC2(skb, &f->exts, res);
				if (r < 0)
					continue;

				return r;
			}
		}
	} else {
		/* old method */
		if (id && (FUNC0(id) == 0 || !(FUNC0(id^tp->q->handle)))) {
			res->classid = id;
			res->class = 0;
			return 0;
		}
	}

	return -1;
}