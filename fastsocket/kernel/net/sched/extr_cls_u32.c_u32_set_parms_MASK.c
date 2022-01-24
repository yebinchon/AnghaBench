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
typedef  void* u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_exts {int dummy; } ;
struct TYPE_2__ {void* classid; } ;
struct tc_u_knode {int /*<<< orphan*/  exts; int /*<<< orphan*/  indev; TYPE_1__ res; struct tc_u_hnode* ht_down; } ;
struct tc_u_hnode {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  tp_c; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TCA_U32_CLASSID ; 
 size_t TCA_U32_INDEV ; 
 size_t TCA_U32_LINK ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,TYPE_1__*,unsigned long) ; 
 int FUNC3 (struct tcf_proto*,int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_proto*,int /*<<< orphan*/ *,struct tcf_exts*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_proto*,struct tcf_exts*) ; 
 int FUNC6 (struct tcf_proto*,struct nlattr**,struct nlattr*,struct tcf_exts*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_proto*) ; 
 int /*<<< orphan*/  u32_ext_map ; 
 struct tc_u_hnode* FUNC9 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC10(struct tcf_proto *tp, unsigned long base,
			 struct tc_u_hnode *ht,
			 struct tc_u_knode *n, struct nlattr **tb,
			 struct nlattr *est)
{
	int err;
	struct tcf_exts e;

	err = FUNC6(tp, tb, est, &e, &u32_ext_map);
	if (err < 0)
		return err;

	err = -EINVAL;
	if (tb[TCA_U32_LINK]) {
		u32 handle = FUNC1(tb[TCA_U32_LINK]);
		struct tc_u_hnode *ht_down = NULL, *ht_old;

		if (FUNC0(handle))
			goto errout;

		if (handle) {
			ht_down = FUNC9(ht->tp_c, handle);

			if (ht_down == NULL)
				goto errout;
			ht_down->refcnt++;
		}

		FUNC7(tp);
		ht_old = n->ht_down;
		n->ht_down = ht_down;
		FUNC8(tp);

		if (ht_old)
			ht_old->refcnt--;
	}
	if (tb[TCA_U32_CLASSID]) {
		n->res.classid = FUNC1(tb[TCA_U32_CLASSID]);
		FUNC2(tp, &n->res, base);
	}

#ifdef CONFIG_NET_CLS_IND
	if (tb[TCA_U32_INDEV]) {
		err = tcf_change_indev(tp, n->indev, tb[TCA_U32_INDEV]);
		if (err < 0)
			goto errout;
	}
#endif
	FUNC4(tp, &n->exts, &e);

	return 0;
errout:
	FUNC5(tp, &e);
	return err;
}