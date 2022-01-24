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
struct xt_policy_info {int flags; int len; struct xt_policy_elem* pol; } ;
struct xt_policy_elem {int dummy; } ;
struct sk_buff {struct sec_path* sp; } ;
struct sec_path {int len; int /*<<< orphan*/ * xvec; } ;

/* Variables and functions */
 int XT_POLICY_MATCH_STRICT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct xt_policy_elem const*,unsigned short) ; 

__attribute__((used)) static int
FUNC1(const struct sk_buff *skb, const struct xt_policy_info *info,
		unsigned short family)
{
	const struct xt_policy_elem *e;
	const struct sec_path *sp = skb->sp;
	int strict = info->flags & XT_POLICY_MATCH_STRICT;
	int i, pos;

	if (sp == NULL)
		return -1;
	if (strict && info->len != sp->len)
		return 0;

	for (i = sp->len - 1; i >= 0; i--) {
		pos = strict ? i - sp->len + 1 : 0;
		if (pos >= info->len)
			return 0;
		e = &info->pol[pos];

		if (FUNC0(sp->xvec[i], e, family)) {
			if (!strict)
				return 1;
		} else if (strict)
			return 0;
	}

	return strict ? 1 : 0;
}