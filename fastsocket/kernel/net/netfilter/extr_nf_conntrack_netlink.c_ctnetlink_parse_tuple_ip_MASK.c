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
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  l3num; } ;
struct nf_conntrack_tuple {TYPE_1__ src; } ;
struct nf_conntrack_l3proto {int (* nlattr_to_tuple ) (struct nlattr**,struct nf_conntrack_tuple*) ;int /*<<< orphan*/  nla_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_IP_MAX ; 
 struct nf_conntrack_l3proto* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int (*) (struct nlattr**,struct nf_conntrack_tuple*)) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct nlattr**,struct nf_conntrack_tuple*) ; 

__attribute__((used)) static inline int
FUNC7(struct nlattr *attr, struct nf_conntrack_tuple *tuple)
{
	struct nlattr *tb[CTA_IP_MAX+1];
	struct nf_conntrack_l3proto *l3proto;
	int ret = 0;

	FUNC2(tb, CTA_IP_MAX, attr, NULL);

	FUNC4();
	l3proto = FUNC0(tuple->src.l3num);

	if (FUNC1(l3proto->nlattr_to_tuple)) {
		ret = FUNC3(attr, CTA_IP_MAX,
					  l3proto->nla_policy);
		if (ret == 0)
			ret = l3proto->nlattr_to_tuple(tb, tuple);
	}

	FUNC5();

	return ret;
}