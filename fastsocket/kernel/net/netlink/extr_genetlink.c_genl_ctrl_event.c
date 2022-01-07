
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_multicast_group {struct genl_family* family; } ;
struct genl_family {int netnsok; } ;
struct TYPE_3__ {int genl_sock; } ;






 int EINVAL ;
 int GENL_ID_CTRL ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* ctrl_build_family_msg (struct genl_family*,int ,int ,int) ;
 struct sk_buff* ctrl_build_mcgrp_msg (void*,int ,int ,int) ;
 int genlmsg_multicast_allns (struct sk_buff*,int ,int ,int ) ;
 int genlmsg_multicast_netns (TYPE_1__*,struct sk_buff*,int ,int ,int ) ;
 TYPE_1__ init_net ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int genl_ctrl_event(int event, void *data)
{
 struct sk_buff *msg;
 struct genl_family *family;
 struct genl_multicast_group *grp;


 if (!init_net.genl_sock)
  return 0;

 switch (event) {
 case 129:
 case 131:
  family = data;
  msg = ctrl_build_family_msg(family, 0, 0, event);
  break;
 case 128:
 case 130:
  grp = data;
  family = grp->family;
  msg = ctrl_build_mcgrp_msg(data, 0, 0, event);
  break;
 default:
  return -EINVAL;
 }

 if (IS_ERR(msg))
  return PTR_ERR(msg);

 if (!family->netnsok) {
  genlmsg_multicast_netns(&init_net, msg, 0,
     GENL_ID_CTRL, GFP_KERNEL);
 } else {
  rcu_read_lock();
  genlmsg_multicast_allns(msg, 0, GENL_ID_CTRL, GFP_ATOMIC);
  rcu_read_unlock();
 }

 return 0;
}
