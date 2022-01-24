#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct tcf_result {size_t classid; scalar_t__ class; } ;
struct tcf_proto {TYPE_3__* q; scalar_t__ root; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int iif; } ;
struct rtable {TYPE_1__ fl; } ;
struct route4_head {struct route4_bucket** table; TYPE_2__* fastmap; } ;
struct route4_filter {size_t id; int iif; struct route4_filter* next; struct tcf_result res; } ;
struct route4_bucket {struct route4_filter** ht; } ;
struct dst_entry {size_t tclassid; } ;
struct TYPE_6__ {size_t handle; } ;
struct TYPE_5__ {size_t id; int iif; struct route4_filter* filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct route4_filter* ROUTE4_FAILURE ; 
 scalar_t__ FUNC1 (size_t) ; 
 size_t FUNC2 (size_t,int) ; 
 size_t FUNC3 (size_t) ; 
 size_t FUNC4 (int) ; 
 size_t FUNC5 (size_t) ; 
 size_t FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct route4_head*,size_t,int,struct route4_filter*) ; 
 struct dst_entry* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct tcf_proto *tp,
			   struct tcf_result *res)
{
	struct route4_head *head = (struct route4_head*)tp->root;
	struct dst_entry *dst;
	struct route4_bucket *b;
	struct route4_filter *f;
	u32 id, h;
	int iif, dont_cache = 0;

	if ((dst = FUNC8(skb)) == NULL)
		goto failure;

	id = dst->tclassid;
	if (head == NULL)
		goto old_method;

	iif = ((struct rtable*)dst)->fl.iif;

	h = FUNC2(id, iif);
	if (id == head->fastmap[h].id &&
	    iif == head->fastmap[h].iif &&
	    (f = head->fastmap[h].filter) != NULL) {
		if (f == ROUTE4_FAILURE)
			goto failure;

		*res = f->res;
		return 0;
	}

	h = FUNC5(id);

restart:
	if ((b = head->table[h]) != NULL) {
		for (f = b->ht[FUNC3(id)]; f; f = f->next)
			if (f->id == id)
				FUNC0();

		for (f = b->ht[FUNC4(iif)]; f; f = f->next)
			if (f->iif == iif)
				FUNC0();

		for (f = b->ht[FUNC6()]; f; f = f->next)
			FUNC0();

	}
	if (h < 256) {
		h = 256;
		id &= ~0xFFFF;
		goto restart;
	}

	if (!dont_cache)
		FUNC7(head, id, iif, ROUTE4_FAILURE);
failure:
	return -1;

old_method:
	if (id && (FUNC1(id) == 0 ||
		   !(FUNC1(id^tp->q->handle)))) {
		res->classid = id;
		res->class = 0;
		return 0;
	}
	return -1;
}