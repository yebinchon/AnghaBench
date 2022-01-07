
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct se_tmr_req {TYPE_3__* task_cmd; } ;
struct se_portal_group {TYPE_4__* se_tpg_tfo; } ;
struct se_node_acl {int initiatorname; } ;
struct TYPE_6__ {int emulate_tas; } ;
struct se_device {int dev_reservation_flags; TYPE_5__* transport; int stats_lock; int num_resets; int dev_reservation_lock; int * dev_reserved_node_acl; TYPE_1__ dev_attrib; } ;
struct se_cmd {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {char* (* get_fabric_name ) () ;} ;
struct TYPE_8__ {TYPE_2__* se_sess; } ;
struct TYPE_7__ {struct se_portal_group* se_tpg; struct se_node_acl* se_node_acl; } ;


 int DRF_SPC2_RESERVATIONS ;
 int core_tmr_drain_state_list (struct se_device*,struct se_cmd*,struct se_node_acl*,int,struct list_head*) ;
 int core_tmr_drain_tmr_list (struct se_device*,struct se_tmr_req*,struct list_head*) ;
 int pr_debug (char*,...) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 char* stub1 () ;

int core_tmr_lun_reset(
        struct se_device *dev,
        struct se_tmr_req *tmr,
        struct list_head *preempt_and_abort_list,
        struct se_cmd *prout_cmd)
{
 struct se_node_acl *tmr_nacl = ((void*)0);
 struct se_portal_group *tmr_tpg = ((void*)0);
 int tas;
 tas = dev->dev_attrib.emulate_tas;




 if (tmr && tmr->task_cmd && tmr->task_cmd->se_sess) {
  tmr_nacl = tmr->task_cmd->se_sess->se_node_acl;
  tmr_tpg = tmr->task_cmd->se_sess->se_tpg;
  if (tmr_nacl && tmr_tpg) {
   pr_debug("LUN_RESET: TMR caller fabric: %s"
    " initiator port %s\n",
    tmr_tpg->se_tpg_tfo->get_fabric_name(),
    tmr_nacl->initiatorname);
  }
 }
 pr_debug("LUN_RESET: %s starting for [%s], tas: %d\n",
  (preempt_and_abort_list) ? "Preempt" : "TMR",
  dev->transport->name, tas);

 core_tmr_drain_tmr_list(dev, tmr, preempt_and_abort_list);
 core_tmr_drain_state_list(dev, prout_cmd, tmr_nacl, tas,
    preempt_and_abort_list);





 if (!preempt_and_abort_list &&
      (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS)) {
  spin_lock(&dev->dev_reservation_lock);
  dev->dev_reserved_node_acl = ((void*)0);
  dev->dev_reservation_flags &= ~DRF_SPC2_RESERVATIONS;
  spin_unlock(&dev->dev_reservation_lock);
  pr_debug("LUN_RESET: SCSI-2 Released reservation\n");
 }

 spin_lock_irq(&dev->stats_lock);
 dev->num_resets++;
 spin_unlock_irq(&dev->stats_lock);

 pr_debug("LUN_RESET: %s for [%s] Complete\n",
   (preempt_and_abort_list) ? "Preempt" : "TMR",
   dev->transport->name);
 return 0;
}
