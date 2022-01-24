#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcf_proto {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  kind; } ;
struct tcf_meta_hdr {TYPE_3__ right; TYPE_3__ left; } ;
struct tcf_ematch {int datalen; unsigned long data; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hdr; } ;
struct meta_match {TYPE_1__ rvalue; TYPE_1__ lvalue; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t TCA_EM_META_HDR ; 
 size_t TCA_EM_META_LVALUE ; 
 int /*<<< orphan*/  TCA_EM_META_MAX ; 
 size_t TCA_EM_META_RVALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCF_META_ID_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCF_META_TYPE_MAX ; 
 struct meta_match* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct meta_match*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  meta_policy ; 
 struct tcf_meta_hdr* FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr**,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct tcf_proto *tp, void *data, int len,
			  struct tcf_ematch *m)
{
	int err;
	struct nlattr *tb[TCA_EM_META_MAX + 1];
	struct tcf_meta_hdr *hdr;
	struct meta_match *meta = NULL;

	err = FUNC8(tb, TCA_EM_META_MAX, data, len, meta_policy);
	if (err < 0)
		goto errout;

	err = -EINVAL;
	if (tb[TCA_EM_META_HDR] == NULL)
		goto errout;
	hdr = FUNC7(tb[TCA_EM_META_HDR]);

	if (FUNC1(hdr->left.kind) != FUNC1(hdr->right.kind) ||
	    FUNC1(hdr->left.kind) > TCF_META_TYPE_MAX ||
	    FUNC0(hdr->left.kind) > TCF_META_ID_MAX ||
	    FUNC0(hdr->right.kind) > TCF_META_ID_MAX)
		goto errout;

	meta = FUNC2(sizeof(*meta), GFP_KERNEL);
	if (meta == NULL)
		goto errout;

	FUNC3(&meta->lvalue.hdr, &hdr->left, sizeof(hdr->left));
	FUNC3(&meta->rvalue.hdr, &hdr->right, sizeof(hdr->right));

	if (!FUNC6(&meta->lvalue) ||
	    !FUNC6(&meta->rvalue)) {
		err = -EOPNOTSUPP;
		goto errout;
	}

	if (FUNC4(&meta->lvalue, tb[TCA_EM_META_LVALUE]) < 0 ||
	    FUNC4(&meta->rvalue, tb[TCA_EM_META_RVALUE]) < 0)
		goto errout;

	m->datalen = sizeof(*meta);
	m->data = (unsigned long) meta;

	err = 0;
errout:
	if (err && meta)
		FUNC5(meta);
	return err;
}