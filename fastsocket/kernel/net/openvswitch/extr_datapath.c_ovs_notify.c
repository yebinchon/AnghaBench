
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_multicast_group {int id; } ;
struct genl_info {int nlhdr; int snd_pid; } ;


 int GFP_KERNEL ;
 int genl_info_net (struct genl_info*) ;
 int genl_notify (struct sk_buff*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void ovs_notify(struct sk_buff *skb, struct genl_info *info,
         struct genl_multicast_group *grp)
{
 genl_notify(skb, genl_info_net(info), info->snd_pid,
      grp->id, info->nlhdr, GFP_KERNEL);
}
