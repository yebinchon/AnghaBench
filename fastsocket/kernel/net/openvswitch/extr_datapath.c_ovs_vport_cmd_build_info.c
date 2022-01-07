
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vport {int dummy; } ;
struct sk_buff {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int NLMSG_DEFAULT_SIZE ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int ovs_vport_cmd_fill_info (struct vport*,struct sk_buff*,int ,int ,int ,int ) ;

struct sk_buff *ovs_vport_cmd_build_info(struct vport *vport, u32 pid,
      u32 seq, u8 cmd)
{
 struct sk_buff *skb;
 int retval;

 skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 retval = ovs_vport_cmd_fill_info(vport, skb, pid, seq, 0, cmd);
 BUG_ON(retval < 0);

 return skb;
}
