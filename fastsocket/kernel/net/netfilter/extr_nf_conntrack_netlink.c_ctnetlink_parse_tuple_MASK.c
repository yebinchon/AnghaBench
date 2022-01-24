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
typedef  int /*<<< orphan*/  u_int8_t ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dir; } ;
struct TYPE_3__ {int /*<<< orphan*/  l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;
typedef  enum ctattr_tuple { ____Placeholder_ctattr_tuple } ctattr_tuple ;

/* Variables and functions */
 size_t CTA_TUPLE_IP ; 
 int /*<<< orphan*/  CTA_TUPLE_MAX ; 
 size_t CTA_TUPLE_PROTO ; 
 int CTA_TUPLE_REPLY ; 
 int EINVAL ; 
 int /*<<< orphan*/  IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  IP_CT_DIR_REPLY ; 
 int FUNC0 (struct nlattr*,struct nf_conntrack_tuple*) ; 
 int FUNC1 (struct nlattr*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_tuple*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const* const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(const struct nlattr * const cda[],
		      struct nf_conntrack_tuple *tuple,
		      enum ctattr_tuple type, u_int8_t l3num)
{
	struct nlattr *tb[CTA_TUPLE_MAX+1];
	int err;

	FUNC2(tuple, 0, sizeof(*tuple));

	FUNC3(tb, CTA_TUPLE_MAX, cda[type], NULL);

	if (!tb[CTA_TUPLE_IP])
		return -EINVAL;

	tuple->src.l3num = l3num;

	err = FUNC0(tb[CTA_TUPLE_IP], tuple);
	if (err < 0)
		return err;

	if (!tb[CTA_TUPLE_PROTO])
		return -EINVAL;

	err = FUNC1(tb[CTA_TUPLE_PROTO], tuple);
	if (err < 0)
		return err;

	/* orig and expect tuples get DIR_ORIGINAL */
	if (type == CTA_TUPLE_REPLY)
		tuple->dst.dir = IP_CT_DIR_REPLY;
	else
		tuple->dst.dir = IP_CT_DIR_ORIGINAL;

	return 0;
}