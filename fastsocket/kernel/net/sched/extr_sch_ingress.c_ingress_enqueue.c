
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_result {int classid; } ;
struct sk_buff {int tc_index; } ;
struct ingress_qdisc_data {int filter_list; } ;
struct TYPE_3__ {int drops; } ;
struct TYPE_4__ {int bytes; int packets; } ;
struct Qdisc {TYPE_1__ qstats; TYPE_2__ bstats; } ;







 int TC_H_MIN (int ) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct ingress_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int tc_classify (struct sk_buff*,int ,struct tcf_result*) ;

__attribute__((used)) static int ingress_enqueue(struct sk_buff *skb, struct Qdisc *sch)
{
 struct ingress_qdisc_data *p = qdisc_priv(sch);
 struct tcf_result res;
 int result;

 result = tc_classify(skb, p->filter_list, &res);

 sch->bstats.packets++;
 sch->bstats.bytes += qdisc_pkt_len(skb);
 switch (result) {
 case 129:
  result = 129;
  sch->qstats.drops++;
  break;
 case 128:
 case 131:
  result = 128;
  break;
 case 130:
 case 132:
  skb->tc_index = TC_H_MIN(res.classid);
 default:
  result = 132;
  break;
 }

 return result;
}
