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
struct tcmsg {int tcm_handle; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int classid; } ;
struct route4_filter {int handle; int id; int iif; int /*<<< orphan*/  exts; TYPE_1__ res; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_ROUTE4_CLASSID ; 
 int /*<<< orphan*/  TCA_ROUTE4_FROM ; 
 int /*<<< orphan*/  TCA_ROUTE4_IIF ; 
 int /*<<< orphan*/  TCA_ROUTE4_TO ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  route_ext_map ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct tcf_proto *tp, unsigned long fh,
		       struct sk_buff *skb, struct tcmsg *t)
{
	struct route4_filter *f = (struct route4_filter*)fh;
	unsigned char *b = FUNC4(skb);
	struct nlattr *nest;
	u32 id;

	if (f == NULL)
		return skb->len;

	t->tcm_handle = f->handle;

	nest = FUNC2(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	if (!(f->handle&0x8000)) {
		id = f->id&0xFF;
		FUNC0(skb, TCA_ROUTE4_TO, id);
	}
	if (f->handle&0x80000000) {
		if ((f->handle>>16) != 0xFFFF)
			FUNC0(skb, TCA_ROUTE4_IIF, f->iif);
	} else {
		id = f->id>>16;
		FUNC0(skb, TCA_ROUTE4_FROM, id);
	}
	if (f->res.classid)
		FUNC0(skb, TCA_ROUTE4_CLASSID, f->res.classid);

	if (FUNC5(skb, &f->exts, &route_ext_map) < 0)
		goto nla_put_failure;

	FUNC1(skb, nest);

	if (FUNC6(skb, &f->exts, &route_ext_map) < 0)
		goto nla_put_failure;

	return skb->len;

nla_put_failure:
	FUNC3(skb, b);
	return -1;
}