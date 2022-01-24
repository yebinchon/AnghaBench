#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcf_proto {int dummy; } ;
struct tcf_ematch_tree_hdr {int nmatches; } ;
struct tcf_ematch_tree {int /*<<< orphan*/ * matches; int /*<<< orphan*/  hdr; } ;
struct tcf_ematch_hdr {int dummy; } ;
struct tcf_ematch {int dummy; } ;
struct nlattr {int nla_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t TCA_EMATCH_TREE_HDR ; 
 size_t TCA_EMATCH_TREE_LIST ; 
 int /*<<< orphan*/  TCA_EMATCH_TREE_MAX ; 
 int /*<<< orphan*/  em_policy ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tcf_ematch_tree_hdr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_ematch_tree*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 struct nlattr* FUNC5 (struct nlattr*,int*) ; 
 scalar_t__ FUNC6 (struct nlattr*,int) ; 
 int FUNC7 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 struct tcf_ematch* FUNC8 (struct tcf_ematch_tree*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tcf_proto*,struct tcf_ematch_tree*) ; 
 int FUNC10 (struct tcf_proto*,struct tcf_ematch_tree_hdr*,struct tcf_ematch*,struct nlattr*,int) ; 

int FUNC11(struct tcf_proto *tp, struct nlattr *nla,
			 struct tcf_ematch_tree *tree)
{
	int idx, list_len, matches_len, err;
	struct nlattr *tb[TCA_EMATCH_TREE_MAX + 1];
	struct nlattr *rt_match, *rt_hdr, *rt_list;
	struct tcf_ematch_tree_hdr *tree_hdr;
	struct tcf_ematch *em;

	FUNC2(tree, 0, sizeof(*tree));
	if (!nla)
		return 0;

	err = FUNC7(tb, TCA_EMATCH_TREE_MAX, nla, em_policy);
	if (err < 0)
		goto errout;

	err = -EINVAL;
	rt_hdr = tb[TCA_EMATCH_TREE_HDR];
	rt_list = tb[TCA_EMATCH_TREE_LIST];

	if (rt_hdr == NULL || rt_list == NULL)
		goto errout;

	tree_hdr = FUNC3(rt_hdr);
	FUNC1(&tree->hdr, tree_hdr, sizeof(*tree_hdr));

	rt_match = FUNC3(rt_list);
	list_len = FUNC4(rt_list);
	matches_len = tree_hdr->nmatches * sizeof(*em);

	tree->matches = FUNC0(matches_len, GFP_KERNEL);
	if (tree->matches == NULL)
		goto errout;

	/* We do not use nla_parse_nested here because the maximum
	 * number of attributes is unknown. This saves us the allocation
	 * for a tb buffer which would serve no purpose at all.
	 *
	 * The array of rt attributes is parsed in the order as they are
	 * provided, their type must be incremental from 1 to n. Even
	 * if it does not serve any real purpose, a failure of sticking
	 * to this policy will result in parsing failure. */
	for (idx = 0; FUNC6(rt_match, list_len); idx++) {
		err = -EINVAL;

		if (rt_match->nla_type != (idx + 1))
			goto errout_abort;

		if (idx >= tree_hdr->nmatches)
			goto errout_abort;

		if (FUNC4(rt_match) < sizeof(struct tcf_ematch_hdr))
			goto errout_abort;

		em = FUNC8(tree, idx);

		err = FUNC10(tp, tree_hdr, em, rt_match, idx);
		if (err < 0)
			goto errout_abort;

		rt_match = FUNC5(rt_match, &list_len);
	}

	/* Check if the number of matches provided by userspace actually
	 * complies with the array of matches. The number was used for
	 * the validation of references and a mismatch could lead to
	 * undefined references during the matching process. */
	if (idx != tree_hdr->nmatches) {
		err = -EINVAL;
		goto errout_abort;
	}

	err = 0;
errout:
	return err;

errout_abort:
	FUNC9(tp, tree);
	return err;
}