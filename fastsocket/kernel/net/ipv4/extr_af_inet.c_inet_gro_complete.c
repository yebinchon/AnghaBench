
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct net_protocol {int (* gro_complete ) (struct sk_buff*) ;} ;
struct net_offload {int (* gro_complete ) (struct sk_buff*) ;} ;
struct iphdr {int protocol; int tot_len; int check; } ;
typedef int __be16 ;


 int ENOSYS ;
 int MAX_INET_PROTOS ;
 int WARN_ON (int) ;
 int csum_replace2 (int *,int ,int ) ;
 int htons (scalar_t__) ;
 int * inet_offloads ;
 int * inet_protos ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;
 int stub2 (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int inet_gro_complete(struct sk_buff *skb)
{
 const struct net_protocol *proto_ops;
 const struct net_offload *ops;
 struct iphdr *iph = ip_hdr(skb);
 int proto = iph->protocol & (MAX_INET_PROTOS - 1);
 int err = -ENOSYS;
 __be16 newlen = htons(skb->len - skb_network_offset(skb));

 csum_replace2(&iph->check, iph->tot_len, newlen);
 iph->tot_len = newlen;

 rcu_read_lock();
 ops = rcu_dereference(inet_offloads[proto]);
 if (unlikely(!ops || !ops->gro_complete)) {

  proto_ops = rcu_dereference(inet_protos[proto]);
  if (!proto_ops || !proto_ops->gro_complete) {
   WARN_ON(1);
   goto out_unlock;
  }
  err = proto_ops->gro_complete(skb);
 } else
  err = ops->gro_complete(skb);

out_unlock:
 rcu_read_unlock();

 return err;
}
