
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vport {int upcall_pid; TYPE_1__* ops; int port_no; int dp; } ;
struct sk_buff {int dummy; } ;
struct ovs_vport_stats {int dummy; } ;
struct ovs_header {int dp_ifindex; } ;
struct TYPE_2__ {int (* get_name ) (struct vport*) ;int type; } ;


 int EMSGSIZE ;
 int OVS_VPORT_ATTR_NAME ;
 int OVS_VPORT_ATTR_PORT_NO ;
 int OVS_VPORT_ATTR_STATS ;
 int OVS_VPORT_ATTR_TYPE ;
 int OVS_VPORT_ATTR_UPCALL_PID ;
 int dp_vport_genl_family ;
 int genlmsg_cancel (struct sk_buff*,struct ovs_header*) ;
 int genlmsg_end (struct sk_buff*,struct ovs_header*) ;
 struct ovs_header* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int get_dpifindex (int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct ovs_vport_stats*) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int ovs_vport_get_options (struct vport*,struct sk_buff*) ;
 int ovs_vport_get_stats (struct vport*,struct ovs_vport_stats*) ;
 int stub1 (struct vport*) ;

__attribute__((used)) static int ovs_vport_cmd_fill_info(struct vport *vport, struct sk_buff *skb,
       u32 pid, u32 seq, u32 flags, u8 cmd)
{
 struct ovs_header *ovs_header;
 struct ovs_vport_stats vport_stats;
 int err;

 ovs_header = genlmsg_put(skb, pid, seq, &dp_vport_genl_family,
     flags, cmd);
 if (!ovs_header)
  return -EMSGSIZE;

 ovs_header->dp_ifindex = get_dpifindex(vport->dp);

 if (nla_put_u32(skb, OVS_VPORT_ATTR_PORT_NO, vport->port_no) ||
     nla_put_u32(skb, OVS_VPORT_ATTR_TYPE, vport->ops->type) ||
     nla_put_string(skb, OVS_VPORT_ATTR_NAME, vport->ops->get_name(vport)) ||
     nla_put_u32(skb, OVS_VPORT_ATTR_UPCALL_PID, vport->upcall_pid))
  goto nla_put_failure;

 ovs_vport_get_stats(vport, &vport_stats);
 if (nla_put(skb, OVS_VPORT_ATTR_STATS, sizeof(struct ovs_vport_stats),
      &vport_stats))
  goto nla_put_failure;

 err = ovs_vport_get_options(vport, skb);
 if (err == -EMSGSIZE)
  goto error;

 return genlmsg_end(skb, ovs_header);

nla_put_failure:
 err = -EMSGSIZE;
error:
 genlmsg_cancel(skb, ovs_header);
 return err;
}
