
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {int* data; } ;
struct gre_protocol {int (* handler ) (struct sk_buff*) ;} ;


 size_t GREPROTO_MAX ;
 int NET_RX_DROP ;
 int * gre_proto ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 struct gre_protocol* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int gre_rcv(struct sk_buff *skb)
{
 const struct gre_protocol *proto;
 u8 ver;
 int ret;

 if (!pskb_may_pull(skb, 12))
  goto drop;

 ver = skb->data[1]&0x7f;
 if (ver >= GREPROTO_MAX)
  goto drop;

 rcu_read_lock();
 proto = rcu_dereference(gre_proto[ver]);
 if (!proto || !proto->handler)
  goto drop_unlock;
 ret = proto->handler(skb);
 rcu_read_unlock();
 return ret;

drop_unlock:
 rcu_read_unlock();
drop:
 kfree_skb(skb);
 return NET_RX_DROP;
}
