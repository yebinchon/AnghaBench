#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  protonum; } ;
struct TYPE_3__ {int /*<<< orphan*/  l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;
struct nf_conntrack_l4proto {int (* nlattr_to_tuple ) (struct nlattr**,struct nf_conntrack_tuple*) ;int /*<<< orphan*/  nla_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_PROTO_MAX ; 
 size_t CTA_PROTO_NUM ; 
 int EINVAL ; 
 struct nf_conntrack_l4proto* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int (*) (struct nlattr**,struct nf_conntrack_tuple*)) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proto_nla_policy ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct nlattr**,struct nf_conntrack_tuple*) ; 

__attribute__((used)) static inline int
FUNC8(struct nlattr *attr,
			    struct nf_conntrack_tuple *tuple)
{
	struct nlattr *tb[CTA_PROTO_MAX+1];
	struct nf_conntrack_l4proto *l4proto;
	int ret = 0;

	ret = FUNC3(tb, CTA_PROTO_MAX, attr, proto_nla_policy);
	if (ret < 0)
		return ret;

	if (!tb[CTA_PROTO_NUM])
		return -EINVAL;
	tuple->dst.protonum = FUNC2(tb[CTA_PROTO_NUM]);

	FUNC5();
	l4proto = FUNC0(tuple->src.l3num, tuple->dst.protonum);

	if (FUNC1(l4proto->nlattr_to_tuple)) {
		ret = FUNC4(attr, CTA_PROTO_MAX,
					  l4proto->nla_policy);
		if (ret == 0)
			ret = l4proto->nlattr_to_tuple(tb, tuple);
	}

	FUNC6();

	return ret;
}