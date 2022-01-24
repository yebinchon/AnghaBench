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
struct tcf_proto {scalar_t__ root; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct fw_head {int mask; } ;
struct TYPE_2__ {int classid; } ;
struct fw_filter {int /*<<< orphan*/  exts; int /*<<< orphan*/  indev; TYPE_1__ res; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TCA_FW_CLASSID ; 
 int /*<<< orphan*/  TCA_FW_INDEV ; 
 int /*<<< orphan*/  TCA_FW_MASK ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  fw_ext_map ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct tcf_proto *tp, unsigned long fh,
		   struct sk_buff *skb, struct tcmsg *t)
{
	struct fw_head *head = (struct fw_head *)tp->root;
	struct fw_filter *f = (struct fw_filter*)fh;
	unsigned char *b = FUNC5(skb);
	struct nlattr *nest;

	if (f == NULL)
		return skb->len;

	t->tcm_handle = f->id;

	if (!f->res.classid && !FUNC9(&f->exts))
		return skb->len;

	nest = FUNC3(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	if (f->res.classid)
		FUNC1(skb, TCA_FW_CLASSID, f->res.classid);
#ifdef CONFIG_NET_CLS_IND
	if (strlen(f->indev))
		NLA_PUT_STRING(skb, TCA_FW_INDEV, f->indev);
#endif /* CONFIG_NET_CLS_IND */
	if (head->mask != 0xFFFFFFFF)
		FUNC1(skb, TCA_FW_MASK, head->mask);

	if (FUNC7(skb, &f->exts, &fw_ext_map) < 0)
		goto nla_put_failure;

	FUNC2(skb, nest);

	if (FUNC8(skb, &f->exts, &fw_ext_map) < 0)
		goto nla_put_failure;

	return skb->len;

nla_put_failure:
	FUNC4(skb, b);
	return -1;
}