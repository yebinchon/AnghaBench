
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int queue_depth; int initiatorname; } ;
struct TYPE_2__ {int (* get_fabric_name ) () ;} ;


 int pr_err (char*,int ,int ) ;
 int stub1 () ;

__attribute__((used)) static int core_set_queue_depth_for_node(
 struct se_portal_group *tpg,
 struct se_node_acl *acl)
{
 if (!acl->queue_depth) {
  pr_err("Queue depth for %s Initiator Node: %s is 0,"
   "defaulting to 1.\n", tpg->se_tpg_tfo->get_fabric_name(),
   acl->initiatorname);
  acl->queue_depth = 1;
 }

 return 0;
}
