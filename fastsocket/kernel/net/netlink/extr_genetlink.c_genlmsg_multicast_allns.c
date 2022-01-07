
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 int genlmsg_mcast (struct sk_buff*,int ,unsigned int,int ) ;

int genlmsg_multicast_allns(struct sk_buff *skb, u32 pid, unsigned int group,
       gfp_t flags)
{
 return genlmsg_mcast(skb, pid, group, flags);
}
