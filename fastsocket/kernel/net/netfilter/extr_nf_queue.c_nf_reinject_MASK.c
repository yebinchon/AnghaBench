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
struct sk_buff {int dummy; } ;
struct nf_queue_entry {size_t pf; size_t hook; int /*<<< orphan*/  (* okfn ) (struct sk_buff*) ;int /*<<< orphan*/  outdev; int /*<<< orphan*/  indev; TYPE_1__* elem; struct sk_buff* skb; } ;
struct nf_afinfo {scalar_t__ (* reroute ) (struct sk_buff*,struct nf_queue_entry*) ;} ;
struct list_head {struct list_head* prev; } ;
struct TYPE_2__ {struct list_head list; } ;

/* Variables and functions */
 int ECANCELED ; 
 int ESRCH ; 
 int /*<<< orphan*/  INT_MIN ; 
#define  NF_ACCEPT 131 
 unsigned int NF_DROP ; 
#define  NF_QUEUE 130 
 unsigned int NF_REPEAT ; 
#define  NF_STOLEN 129 
#define  NF_STOP 128 
 unsigned int NF_VERDICT_FLAG_QUEUE_BYPASS ; 
 unsigned int NF_VERDICT_MASK ; 
 unsigned int NF_VERDICT_QBITS ; 
 int FUNC0 (struct sk_buff*,struct list_head*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct sk_buff*),unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct nf_afinfo* FUNC5 (size_t) ; 
 int /*<<< orphan*/ ** nf_hooks ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,struct sk_buff*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct list_head**,int /*<<< orphan*/  (*) (struct sk_buff*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct sk_buff*,struct nf_queue_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

void FUNC12(struct nf_queue_entry *entry, unsigned int verdict)
{
	struct sk_buff *skb = entry->skb;
	struct list_head *elem = &entry->elem->list;
	const struct nf_afinfo *afinfo;
	int err;

	FUNC8();

	FUNC7(entry);

	/* Continue traversal iff userspace said ok... */
	if (verdict == NF_REPEAT) {
		elem = elem->prev;
		verdict = NF_ACCEPT;
	}

	if (verdict == NF_ACCEPT) {
		afinfo = FUNC5(entry->pf);
		if (!afinfo || afinfo->reroute(skb, entry) < 0)
			verdict = NF_DROP;
	}

	if (verdict == NF_ACCEPT) {
	next_hook:
		verdict = FUNC6(&nf_hooks[entry->pf][entry->hook],
				     skb, entry->hook,
				     entry->indev, entry->outdev, &elem,
				     entry->okfn, INT_MIN);
	}

	switch (verdict & NF_VERDICT_MASK) {
	case NF_ACCEPT:
	case NF_STOP:
		FUNC3();
		entry->okfn(skb);
		FUNC4();
	case NF_STOLEN:
		break;
	case NF_QUEUE:
		err = FUNC0(skb, elem, entry->pf, entry->hook,
				 entry->indev, entry->outdev, entry->okfn,
				 verdict >> NF_VERDICT_QBITS);
		if (err < 0) {
			if (err == -ECANCELED)
				goto next_hook;
			if (err == -ESRCH &&
			   (verdict & NF_VERDICT_FLAG_QUEUE_BYPASS))
				goto next_hook;
			FUNC2(skb);
		}
		break;
	default:
		FUNC2(skb);
	}
	FUNC9();
	FUNC1(entry);
	return;
}