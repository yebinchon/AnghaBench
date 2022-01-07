
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vport {struct datapath* dp; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;
struct TYPE_5__ {int genl_sock; } ;
struct TYPE_4__ {int id; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int OVS_VPORT_CMD_DEL ;
 int PTR_ERR (struct sk_buff*) ;
 int genlmsg_multicast_netns (TYPE_2__*,struct sk_buff*,int ,int ,int ) ;
 int netlink_set_err (int ,int ,int ,int ) ;
 int ovs_dp_detach_port (struct vport*) ;
 TYPE_2__* ovs_dp_get_net (struct datapath*) ;
 TYPE_1__ ovs_dp_vport_multicast_group ;
 struct sk_buff* ovs_vport_cmd_build_info (struct vport*,int ,int ,int ) ;

__attribute__((used)) static void dp_detach_port_notify(struct vport *vport)
{
 struct sk_buff *notify;
 struct datapath *dp;

 dp = vport->dp;
 notify = ovs_vport_cmd_build_info(vport, 0, 0,
       OVS_VPORT_CMD_DEL);
 ovs_dp_detach_port(vport);
 if (IS_ERR(notify)) {
  netlink_set_err(ovs_dp_get_net(dp)->genl_sock, 0,
    ovs_dp_vport_multicast_group.id,
    PTR_ERR(notify));
  return;
 }

 genlmsg_multicast_netns(ovs_dp_get_net(dp), notify, 0,
    ovs_dp_vport_multicast_group.id,
    GFP_KERNEL);
}
