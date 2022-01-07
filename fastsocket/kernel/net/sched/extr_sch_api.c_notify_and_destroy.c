
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct Qdisc {int dummy; } ;


 int qdisc_destroy (struct Qdisc*) ;
 int qdisc_notify (struct sk_buff*,struct nlmsghdr*,int ,struct Qdisc*,struct Qdisc*) ;

__attribute__((used)) static void notify_and_destroy(struct sk_buff *skb, struct nlmsghdr *n, u32 clid,
          struct Qdisc *old, struct Qdisc *new)
{
 if (new || old)
  qdisc_notify(skb, n, clid, old, new);

 if (old)
  qdisc_destroy(old);
}
