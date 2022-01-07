
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int sk; } ;
struct sk_buff {int sk; } ;
struct ovs_header {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int snd_seq; int snd_pid; struct ovs_header* userhdr; struct nlattr** attrs; } ;


 scalar_t__ IS_ERR (struct vport*) ;
 int OVS_VPORT_CMD_NEW ;
 int PTR_ERR (struct vport*) ;
 int genlmsg_reply (struct vport*,struct genl_info*) ;
 struct vport* lookup_vport (int ,struct ovs_header*,struct nlattr**) ;
 struct vport* ovs_vport_cmd_build_info (struct vport*,int ,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_vport_cmd_get(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **a = info->attrs;
 struct ovs_header *ovs_header = info->userhdr;
 struct sk_buff *reply;
 struct vport *vport;
 int err;

 rcu_read_lock();
 vport = lookup_vport(sock_net(skb->sk), ovs_header, a);
 err = PTR_ERR(vport);
 if (IS_ERR(vport))
  goto exit_unlock;

 reply = ovs_vport_cmd_build_info(vport, info->snd_pid,
      info->snd_seq, OVS_VPORT_CMD_NEW);
 err = PTR_ERR(reply);
 if (IS_ERR(reply))
  goto exit_unlock;

 rcu_read_unlock();

 return genlmsg_reply(reply, info);

exit_unlock:
 rcu_read_unlock();
 return err;
}
