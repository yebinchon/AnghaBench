
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {scalar_t__ port_no; int sk; } ;
struct sk_buff {scalar_t__ port_no; int sk; } ;
struct nlattr {int dummy; } ;
struct genl_info {int snd_seq; int snd_pid; int userhdr; struct nlattr** attrs; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct vport*) ;
 scalar_t__ OVSP_LOCAL ;
 int OVS_VPORT_CMD_DEL ;
 int PTR_ERR (struct vport*) ;
 struct vport* lookup_vport (int ,int ,struct nlattr**) ;
 int ovs_dp_detach_port (struct vport*) ;
 int ovs_dp_vport_multicast_group ;
 int ovs_lock () ;
 int ovs_notify (struct vport*,struct genl_info*,int *) ;
 int ovs_unlock () ;
 struct vport* ovs_vport_cmd_build_info (struct vport*,int ,int ,int ) ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_vport_cmd_del(struct sk_buff *skb, struct genl_info *info)
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

 if (vport->port_no == OVSP_LOCAL) {
  err = -EINVAL;
  goto exit_unlock;
 }

 reply = ovs_vport_cmd_build_info(vport, info->snd_pid,
      info->snd_seq, OVS_VPORT_CMD_DEL);
 err = PTR_ERR(reply);
 if (IS_ERR(reply))
  goto exit_unlock;

 err = 0;
 ovs_dp_detach_port(vport);

 ovs_notify(reply, info, &ovs_dp_vport_multicast_group);

exit_unlock:
 ovs_unlock();
 return err;
}
