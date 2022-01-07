
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int kfree_skb (struct sk_buff*) ;
 struct vport* ovs_vport_rcu (struct datapath*,int) ;
 int ovs_vport_send (struct vport*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_output(struct datapath *dp, struct sk_buff *skb, int out_port)
{
 struct vport *vport;

 if (unlikely(!skb))
  return -ENOMEM;

 vport = ovs_vport_rcu(dp, out_port);
 if (unlikely(!vport)) {
  kfree_skb(skb);
  return -ENODEV;
 }

 ovs_vport_send(vport, skb);
 return 0;
}
