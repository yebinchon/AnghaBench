
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {scalar_t__ upcall_pid; TYPE_1__* ops; } ;
struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct genl_info {int snd_seq; int snd_pid; int userhdr; struct nlattr** attrs; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct vport*) ;
 int NLMSG_DEFAULT_SIZE ;
 size_t OVS_VPORT_ATTR_OPTIONS ;
 size_t OVS_VPORT_ATTR_TYPE ;
 size_t OVS_VPORT_ATTR_UPCALL_PID ;
 int OVS_VPORT_CMD_NEW ;
 int PTR_ERR (struct vport*) ;
 int kfree_skb (struct sk_buff*) ;
 struct vport* lookup_vport (int ,int ,struct nlattr**) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int ovs_dp_vport_multicast_group ;
 int ovs_lock () ;
 int ovs_notify (struct sk_buff*,struct genl_info*,int *) ;
 int ovs_unlock () ;
 int ovs_vport_cmd_fill_info (struct vport*,struct sk_buff*,int ,int ,int ,int ) ;
 int ovs_vport_set_options (struct vport*,struct nlattr*) ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_vport_cmd_set(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **a = info->attrs;
 struct sk_buff *reply;
 struct vport *vport;
 int err;

 ovs_lock();
 vport = lookup_vport(sock_net(skb->sk), info->userhdr, a);
 err = PTR_ERR(vport);
 if (IS_ERR(vport))
  goto exit_unlock;

 if (a[OVS_VPORT_ATTR_TYPE] &&
     nla_get_u32(a[OVS_VPORT_ATTR_TYPE]) != vport->ops->type) {
  err = -EINVAL;
  goto exit_unlock;
 }

 reply = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!reply) {
  err = -ENOMEM;
  goto exit_unlock;
 }

 if (a[OVS_VPORT_ATTR_OPTIONS]) {
  err = ovs_vport_set_options(vport, a[OVS_VPORT_ATTR_OPTIONS]);
  if (err)
   goto exit_free;
 }

 if (a[OVS_VPORT_ATTR_UPCALL_PID])
  vport->upcall_pid = nla_get_u32(a[OVS_VPORT_ATTR_UPCALL_PID]);

 err = ovs_vport_cmd_fill_info(vport, reply, info->snd_pid,
          info->snd_seq, 0, OVS_VPORT_CMD_NEW);
 BUG_ON(err < 0);

 ovs_unlock();
 ovs_notify(reply, info, &ovs_dp_vport_multicast_group);
 return 0;

exit_free:
 kfree_skb(reply);
exit_unlock:
 ovs_unlock();
 return err;
}
