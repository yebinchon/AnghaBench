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
struct tcmsg {int tcm_handle; } ;
struct tcf_proto {int dummy; } ;
struct tc_rsvp_pinfo {scalar_t__ pad; int /*<<< orphan*/  tunnelhdr; int /*<<< orphan*/  tunnelid; int /*<<< orphan*/  protocol; int /*<<< orphan*/  spi; int /*<<< orphan*/  dpi; } ;
struct sk_buff {int len; } ;
struct rsvp_session {int /*<<< orphan*/  tunnelid; int /*<<< orphan*/  protocol; int /*<<< orphan*/  dpi; struct tc_rsvp_pinfo dst; } ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct rsvp_filter {int handle; int /*<<< orphan*/  exts; struct tc_rsvp_pinfo* src; TYPE_1__ res; int /*<<< orphan*/  tunnelhdr; int /*<<< orphan*/  spi; struct rsvp_session* sess; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  pinfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_rsvp_pinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_RSVP_CLASSID ; 
 int /*<<< orphan*/  TCA_RSVP_DST ; 
 int /*<<< orphan*/  TCA_RSVP_PINFO ; 
 int /*<<< orphan*/  TCA_RSVP_SRC ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  rsvp_ext_map ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct tcf_proto *tp, unsigned long fh,
		     struct sk_buff *skb, struct tcmsg *t)
{
	struct rsvp_filter *f = (struct rsvp_filter*)fh;
	struct rsvp_session *s;
	unsigned char *b = FUNC5(skb);
	struct nlattr *nest;
	struct tc_rsvp_pinfo pinfo;

	if (f == NULL)
		return skb->len;
	s = f->sess;

	t->tcm_handle = f->handle;

	nest = FUNC3(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	FUNC0(skb, TCA_RSVP_DST, sizeof(s->dst), &s->dst);
	pinfo.dpi = s->dpi;
	pinfo.spi = f->spi;
	pinfo.protocol = s->protocol;
	pinfo.tunnelid = s->tunnelid;
	pinfo.tunnelhdr = f->tunnelhdr;
	pinfo.pad = 0;
	FUNC0(skb, TCA_RSVP_PINFO, sizeof(pinfo), &pinfo);
	if (f->res.classid)
		FUNC1(skb, TCA_RSVP_CLASSID, f->res.classid);
	if (((f->handle>>8)&0xFF) != 16)
		FUNC0(skb, TCA_RSVP_SRC, sizeof(f->src), f->src);

	if (FUNC6(skb, &f->exts, &rsvp_ext_map) < 0)
		goto nla_put_failure;

	FUNC2(skb, nest);

	if (FUNC7(skb, &f->exts, &rsvp_ext_map) < 0)
		goto nla_put_failure;
	return skb->len;

nla_put_failure:
	FUNC4(skb, b);
	return -1;
}