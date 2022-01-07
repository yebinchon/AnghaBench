
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;


 unsigned int qdisc_pkt_len (struct sk_buff*) ;
 int qdisc_warn_nonwc (char*,struct Qdisc*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static unsigned int
qdisc_peek_len(struct Qdisc *sch)
{
 struct sk_buff *skb;
 unsigned int len;

 skb = sch->ops->peek(sch);
 if (skb == ((void*)0)) {
  qdisc_warn_nonwc("qdisc_peek_len", sch);
  return 0;
 }
 len = qdisc_pkt_len(skb);

 return len;
}
