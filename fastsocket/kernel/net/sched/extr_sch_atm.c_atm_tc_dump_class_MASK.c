#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcmsg {int tcm_handle; int /*<<< orphan*/  tcm_info; } ;
struct TYPE_7__ {int itf; int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; } ;
struct sockaddr_atmpvc {TYPE_3__ sap_addr; int /*<<< orphan*/  sap_family; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct atm_qdisc_data {int dummy; } ;
struct atm_flow_data {int classid; int hdr_len; scalar_t__ excess; TYPE_4__* vcc; struct sockaddr_atmpvc* hdr; TYPE_1__* q; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  pvc ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; TYPE_2__* dev; } ;
struct TYPE_6__ {int number; } ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_ATMPVC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct sockaddr_atmpvc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TCA_ATM_ADDR ; 
 int /*<<< orphan*/  TCA_ATM_EXCESS ; 
 int /*<<< orphan*/  TCA_ATM_HDR ; 
 int /*<<< orphan*/  TCA_ATM_STATE ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC3 (struct atm_qdisc_data*,struct atm_flow_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct Qdisc*,struct atm_qdisc_data*,struct atm_flow_data*,struct sk_buff*,struct tcmsg*) ; 
 struct atm_qdisc_data* FUNC8 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC9(struct Qdisc *sch, unsigned long cl,
			     struct sk_buff *skb, struct tcmsg *tcm)
{
	struct atm_qdisc_data *p = FUNC8(sch);
	struct atm_flow_data *flow = (struct atm_flow_data *)cl;
	struct nlattr *nest;

	FUNC7("atm_tc_dump_class(sch %p,[qdisc %p],flow %p,skb %p,tcm %p)\n",
		sch, p, flow, skb, tcm);
	if (!FUNC3(p, flow))
		return -EINVAL;
	tcm->tcm_handle = flow->classid;
	tcm->tcm_info = flow->q->handle;

	nest = FUNC6(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	FUNC1(skb, TCA_ATM_HDR, flow->hdr_len, flow->hdr);
	if (flow->vcc) {
		struct sockaddr_atmpvc pvc;
		int state;

		pvc.sap_family = AF_ATMPVC;
		pvc.sap_addr.itf = flow->vcc->dev ? flow->vcc->dev->number : -1;
		pvc.sap_addr.vpi = flow->vcc->vpi;
		pvc.sap_addr.vci = flow->vcc->vci;
		FUNC1(skb, TCA_ATM_ADDR, sizeof(pvc), &pvc);
		state = FUNC0(flow->vcc->flags);
		FUNC2(skb, TCA_ATM_STATE, state);
	}
	if (flow->excess)
		FUNC2(skb, TCA_ATM_EXCESS, flow->classid);
	else {
		FUNC2(skb, TCA_ATM_EXCESS, 0);
	}

	FUNC5(skb, nest);
	return skb->len;

nla_put_failure:
	FUNC4(skb, nest);
	return -1;
}