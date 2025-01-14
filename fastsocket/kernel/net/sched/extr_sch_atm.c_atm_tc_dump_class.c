
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcmsg {int tcm_handle; int tcm_info; } ;
struct TYPE_7__ {int itf; int vci; int vpi; } ;
struct sockaddr_atmpvc {TYPE_3__ sap_addr; int sap_family; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct atm_qdisc_data {int dummy; } ;
struct atm_flow_data {int classid; int hdr_len; scalar_t__ excess; TYPE_4__* vcc; struct sockaddr_atmpvc* hdr; TYPE_1__* q; } ;
struct Qdisc {int dummy; } ;
typedef int pvc ;
struct TYPE_8__ {int flags; int vci; int vpi; TYPE_2__* dev; } ;
struct TYPE_6__ {int number; } ;
struct TYPE_5__ {int handle; } ;


 int AF_ATMPVC ;
 int ATM_VF2VS (int ) ;
 int EINVAL ;
 int NLA_PUT (struct sk_buff*,int ,int,struct sockaddr_atmpvc*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int) ;
 int TCA_ATM_ADDR ;
 int TCA_ATM_EXCESS ;
 int TCA_ATM_HDR ;
 int TCA_ATM_STATE ;
 int TCA_OPTIONS ;
 int find_flow (struct atm_qdisc_data*,struct atm_flow_data*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int pr_debug (char*,struct Qdisc*,struct atm_qdisc_data*,struct atm_flow_data*,struct sk_buff*,struct tcmsg*) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int atm_tc_dump_class(struct Qdisc *sch, unsigned long cl,
        struct sk_buff *skb, struct tcmsg *tcm)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);
 struct atm_flow_data *flow = (struct atm_flow_data *)cl;
 struct nlattr *nest;

 pr_debug("atm_tc_dump_class(sch %p,[qdisc %p],flow %p,skb %p,tcm %p)\n",
  sch, p, flow, skb, tcm);
 if (!find_flow(p, flow))
  return -EINVAL;
 tcm->tcm_handle = flow->classid;
 tcm->tcm_info = flow->q->handle;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 NLA_PUT(skb, TCA_ATM_HDR, flow->hdr_len, flow->hdr);
 if (flow->vcc) {
  struct sockaddr_atmpvc pvc;
  int state;

  pvc.sap_family = AF_ATMPVC;
  pvc.sap_addr.itf = flow->vcc->dev ? flow->vcc->dev->number : -1;
  pvc.sap_addr.vpi = flow->vcc->vpi;
  pvc.sap_addr.vci = flow->vcc->vci;
  NLA_PUT(skb, TCA_ATM_ADDR, sizeof(pvc), &pvc);
  state = ATM_VF2VS(flow->vcc->flags);
  NLA_PUT_U32(skb, TCA_ATM_STATE, state);
 }
 if (flow->excess)
  NLA_PUT_U32(skb, TCA_ATM_EXCESS, flow->classid);
 else {
  NLA_PUT_U32(skb, TCA_ATM_EXCESS, 0);
 }

 nla_nest_end(skb, nest);
 return skb->len;

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}
