
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_core_fabric_ops {int (* get_fabric_name ) () ;} ;
struct t10_pr_registration {int pr_res_holder; int pr_res_type; int pr_res_scope; int pr_reg_abort_list; scalar_t__ pr_reg_all_tg_pt; struct se_node_acl* pr_reg_nacl; } ;
struct se_node_acl {int initiatorname; TYPE_1__* se_tpg; } ;
struct se_device {struct t10_pr_registration* dev_pr_res_holder; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct target_core_fabric_ops* se_tpg_tfo; } ;


 int PR_REG_ISID_ID_LEN ;
 int __core_scsi3_complete_pro_release (struct se_device*,struct se_node_acl*,struct t10_pr_registration*,int ) ;
 int core_pr_dump_initiator_port (struct t10_pr_registration*,char*,int) ;
 int core_scsi3_pr_dump_type (int) ;
 int list_add_tail (int *,struct list_head*) ;
 int memset (char*,int ,int) ;
 int pr_debug (char*,int ,char*,int ,...) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void __core_scsi3_complete_pro_preempt(
 struct se_device *dev,
 struct t10_pr_registration *pr_reg,
 struct list_head *preempt_and_abort_list,
 int type,
 int scope,
 int abort)
{
 struct se_node_acl *nacl = pr_reg->pr_reg_nacl;
 struct target_core_fabric_ops *tfo = nacl->se_tpg->se_tpg_tfo;
 char i_buf[PR_REG_ISID_ID_LEN];
 int prf_isid;

 memset(i_buf, 0, PR_REG_ISID_ID_LEN);
 prf_isid = core_pr_dump_initiator_port(pr_reg, &i_buf[0],
    PR_REG_ISID_ID_LEN);



 if (dev->dev_pr_res_holder)
  __core_scsi3_complete_pro_release(dev, nacl,
    dev->dev_pr_res_holder, 0);

 dev->dev_pr_res_holder = pr_reg;
 pr_reg->pr_res_holder = 1;
 pr_reg->pr_res_type = type;
 pr_reg->pr_res_scope = scope;

 pr_debug("SPC-3 PR [%s] Service Action: PREEMPT%s created new"
  " reservation holder TYPE: %s ALL_TG_PT: %d\n",
  tfo->get_fabric_name(), (abort) ? "_AND_ABORT" : "",
  core_scsi3_pr_dump_type(type),
  (pr_reg->pr_reg_all_tg_pt) ? 1 : 0);
 pr_debug("SPC-3 PR [%s] PREEMPT%s from Node: %s%s\n",
  tfo->get_fabric_name(), (abort) ? "_AND_ABORT" : "",
  nacl->initiatorname, (prf_isid) ? &i_buf[0] : "");





 if (preempt_and_abort_list)
  list_add_tail(&pr_reg->pr_reg_abort_list,
    preempt_and_abort_list);
}
