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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct tcf_proto {struct tc_u_hnode* root; struct tc_u_common* data; int /*<<< orphan*/  prio; } ;
struct TYPE_2__ {scalar_t__ success; } ;
struct tc_u_knode {int handle; struct tc_u_knode* pf; struct tc_u_knode* next; TYPE_1__ mark; scalar_t__ fshift; struct tc_u_hnode* ht_up; TYPE_1__ sel; } ;
struct tc_u_hnode {int refcnt; unsigned int divisor; int handle; struct tc_u_knode** ht; struct tc_u_hnode* next; int /*<<< orphan*/  prio; struct tc_u_common* tp_c; } ;
struct tc_u_common {struct tc_u_hnode* hlist; } ;
struct tc_u32_sel {int nkeys; scalar_t__ hmask; } ;
struct tc_u32_pcnt {int dummy; } ;
struct tc_u32_mark {int nkeys; scalar_t__ hmask; } ;
struct tc_u32_key {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 size_t TCA_U32_DIVISOR ; 
 size_t TCA_U32_HASH ; 
 size_t TCA_U32_MARK ; 
 int /*<<< orphan*/  TCA_U32_MAX ; 
 size_t TCA_U32_SEL ; 
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ TC_U32_ROOT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tc_u_common*) ; 
 int FUNC6 (struct tc_u_hnode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tc_u_knode*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct tc_u32_sel*,int) ; 
 struct tc_u32_sel* FUNC10 (struct nlattr*) ; 
 void* FUNC11 (struct nlattr*) ; 
 int FUNC12 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC15 (struct tcf_proto*) ; 
 struct tc_u_hnode* FUNC16 (struct tc_u_common*,scalar_t__) ; 
 int /*<<< orphan*/  u32_policy ; 
 int FUNC17 (struct tcf_proto*,unsigned long,struct tc_u_hnode*,struct tc_u_knode*,struct nlattr**,struct nlattr*) ; 

__attribute__((used)) static int FUNC18(struct tcf_proto *tp, unsigned long base, u32 handle,
		      struct nlattr **tca,
		      unsigned long *arg)
{
	struct tc_u_common *tp_c = tp->data;
	struct tc_u_hnode *ht;
	struct tc_u_knode *n;
	struct tc_u32_sel *s;
	struct nlattr *opt = tca[TCA_OPTIONS];
	struct nlattr *tb[TCA_U32_MAX + 1];
	u32 htid;
	int err;

	if (opt == NULL)
		return handle ? -EINVAL : 0;

	err = FUNC12(tb, TCA_U32_MAX, opt, u32_policy);
	if (err < 0)
		return err;

	if ((n = (struct tc_u_knode*)*arg) != NULL) {
		if (FUNC2(n->handle) == 0)
			return -EINVAL;

		return FUNC17(tp, base, n->ht_up, n, tb, tca[TCA_RATE]);
	}

	if (tb[TCA_U32_DIVISOR]) {
		unsigned divisor = FUNC11(tb[TCA_U32_DIVISOR]);

		if (--divisor > 0x100)
			return -EINVAL;
		if (FUNC2(handle))
			return -EINVAL;
		if (handle == 0) {
			handle = FUNC5(tp->data);
			if (handle == 0)
				return -ENOMEM;
		}
		ht = FUNC8(sizeof(*ht) + divisor*sizeof(void*), GFP_KERNEL);
		if (ht == NULL)
			return -ENOBUFS;
		ht->tp_c = tp_c;
		ht->refcnt = 1;
		ht->divisor = divisor;
		ht->handle = handle;
		ht->prio = tp->prio;
		ht->next = tp_c->hlist;
		tp_c->hlist = ht;
		*arg = (unsigned long)ht;
		return 0;
	}

	if (tb[TCA_U32_HASH]) {
		htid = FUNC11(tb[TCA_U32_HASH]);
		if (FUNC1(htid) == TC_U32_ROOT) {
			ht = tp->root;
			htid = ht->handle;
		} else {
			ht = FUNC16(tp->data, FUNC1(htid));
			if (ht == NULL)
				return -EINVAL;
		}
	} else {
		ht = tp->root;
		htid = ht->handle;
	}

	if (ht->divisor < FUNC0(htid))
		return -EINVAL;

	if (handle) {
		if (FUNC1(handle) && FUNC1(handle^htid))
			return -EINVAL;
		handle = htid | FUNC3(handle);
	} else
		handle = FUNC6(ht, htid);

	if (tb[TCA_U32_SEL] == NULL)
		return -EINVAL;

	s = FUNC10(tb[TCA_U32_SEL]);

	n = FUNC8(sizeof(*n) + s->nkeys*sizeof(struct tc_u32_key), GFP_KERNEL);
	if (n == NULL)
		return -ENOBUFS;

#ifdef CONFIG_CLS_U32_PERF
	n->pf = kzalloc(sizeof(struct tc_u32_pcnt) + s->nkeys*sizeof(u64), GFP_KERNEL);
	if (n->pf == NULL) {
		kfree(n);
		return -ENOBUFS;
	}
#endif

	FUNC9(&n->sel, s, sizeof(*s) + s->nkeys*sizeof(struct tc_u32_key));
	n->ht_up = ht;
	n->handle = handle;
	n->fshift = s->hmask ? FUNC4(FUNC13(s->hmask)) - 1 : 0;

#ifdef CONFIG_CLS_U32_MARK
	if (tb[TCA_U32_MARK]) {
		struct tc_u32_mark *mark;

		mark = nla_data(tb[TCA_U32_MARK]);
		memcpy(&n->mark, mark, sizeof(struct tc_u32_mark));
		n->mark.success = 0;
	}
#endif

	err = FUNC17(tp, base, ht, n, tb, tca[TCA_RATE]);
	if (err == 0) {
		struct tc_u_knode **ins;
		for (ins = &ht->ht[FUNC0(handle)]; *ins; ins = &(*ins)->next)
			if (FUNC3(handle) < FUNC3((*ins)->handle))
				break;

		n->next = *ins;
		FUNC14(tp);
		*ins = n;
		FUNC15(tp);

		*arg = (unsigned long)n;
		return 0;
	}
#ifdef CONFIG_CLS_U32_PERF
	kfree(n->pf);
#endif
	FUNC7(n);
	return err;
}