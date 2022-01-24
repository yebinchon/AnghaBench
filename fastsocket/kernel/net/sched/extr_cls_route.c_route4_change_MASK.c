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
struct tcf_proto {int /*<<< orphan*/  q; struct route4_head* root; } ;
struct route4_head {struct route4_bucket** table; } ;
struct route4_filter {int handle; int /*<<< orphan*/  id; struct route4_filter* next; TYPE_1__* bkt; } ;
struct route4_bucket {struct route4_filter** ht; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {struct route4_filter** ht; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 int /*<<< orphan*/  TCA_ROUTE4_MAX ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct route4_filter*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  route4_policy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct route4_head*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tcf_proto*,unsigned long,struct route4_filter*,int,struct route4_head*,struct nlattr**,struct nlattr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_proto*) ; 
 unsigned int FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct tcf_proto *tp, unsigned long base,
		       u32 handle,
		       struct nlattr **tca,
		       unsigned long *arg)
{
	struct route4_head *head = tp->root;
	struct route4_filter *f, *f1, **fp;
	struct route4_bucket *b;
	struct nlattr *opt = tca[TCA_OPTIONS];
	struct nlattr *tb[TCA_ROUTE4_MAX + 1];
	unsigned int h, th;
	u32 old_handle = 0;
	int err;

	if (opt == NULL)
		return handle ? -EINVAL : 0;

	err = FUNC3(tb, TCA_ROUTE4_MAX, opt, route4_policy);
	if (err < 0)
		return err;

	if ((f = (struct route4_filter*)*arg) != NULL) {
		if (f->handle != handle && handle)
			return -EINVAL;

		if (f->bkt)
			old_handle = f->handle;

		err = FUNC5(tp, base, f, handle, head, tb,
			tca[TCA_RATE], 0);
		if (err < 0)
			return err;

		goto reinsert;
	}

	err = -ENOBUFS;
	if (head == NULL) {
		head = FUNC2(sizeof(struct route4_head), GFP_KERNEL);
		if (head == NULL)
			goto errout;

		FUNC6(tp);
		tp->root = head;
		FUNC7(tp);
	}

	f = FUNC2(sizeof(struct route4_filter), GFP_KERNEL);
	if (f == NULL)
		goto errout;

	err = FUNC5(tp, base, f, handle, head, tb,
		tca[TCA_RATE], 1);
	if (err < 0)
		goto errout;

reinsert:
	h = FUNC0(f->handle >> 16);
	for (fp = &f->bkt->ht[h]; (f1=*fp) != NULL; fp = &f1->next)
		if (f->handle < f1->handle)
			break;

	f->next = f1;
	FUNC6(tp);
	*fp = f;

	if (old_handle && f->handle != old_handle) {
		th = FUNC8(old_handle);
		h = FUNC0(old_handle >> 16);
		if ((b = head->table[th]) != NULL) {
			for (fp = &b->ht[h]; *fp; fp = &(*fp)->next) {
				if (*fp == f) {
					*fp = f->next;
					break;
				}
			}
		}
	}
	FUNC7(tp);

	FUNC4(tp->q, head, f->id);
	*arg = (unsigned long)f;
	return 0;

errout:
	FUNC1(f);
	return err;
}