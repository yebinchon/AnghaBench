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
struct tcmsg {int /*<<< orphan*/  tcm_handle; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct basic_filter {int /*<<< orphan*/  ematches; int /*<<< orphan*/  exts; TYPE_1__ res; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TCA_BASIC_CLASSID ; 
 int /*<<< orphan*/  TCA_BASIC_EMATCHES ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  basic_ext_map ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct tcf_proto *tp, unsigned long fh,
		      struct sk_buff *skb, struct tcmsg *t)
{
	struct basic_filter *f = (struct basic_filter *) fh;
	struct nlattr *nest;

	if (f == NULL)
		return skb->len;

	t->tcm_handle = f->handle;

	nest = FUNC3(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	if (f->res.classid)
		FUNC0(skb, TCA_BASIC_CLASSID, f->res.classid);

	if (FUNC5(skb, &f->exts, &basic_ext_map) < 0 ||
	    FUNC4(skb, &f->ematches, TCA_BASIC_EMATCHES) < 0)
		goto nla_put_failure;

	FUNC2(skb, nest);
	return skb->len;

nla_put_failure:
	FUNC1(skb, nest);
	return -1;
}