
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_port {scalar_t__ sep_rtpi; } ;
struct se_node_acl {int device_list_lock; struct se_dev_entry** device_list; struct se_portal_group* se_tpg; } ;
struct se_lun {struct se_port* lun_sep; } ;
struct se_dev_entry {int lun_flags; int pr_ref_count; struct se_lun* se_lun; } ;
struct TYPE_2__ {int (* get_fabric_name ) () ;} ;


 int TRANSPORT_LUNFLAGS_INITIATOR_ACCESS ;
 size_t TRANSPORT_MAX_LUNS_PER_TPG ;
 int atomic_inc (int *) ;
 int pr_err (char*,int ) ;
 int smp_mb__after_atomic_inc () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 () ;
 int stub2 () ;

struct se_dev_entry *core_get_se_deve_from_rtpi(
 struct se_node_acl *nacl,
 u16 rtpi)
{
 struct se_dev_entry *deve;
 struct se_lun *lun;
 struct se_port *port;
 struct se_portal_group *tpg = nacl->se_tpg;
 u32 i;

 spin_lock_irq(&nacl->device_list_lock);
 for (i = 0; i < TRANSPORT_MAX_LUNS_PER_TPG; i++) {
  deve = nacl->device_list[i];

  if (!(deve->lun_flags & TRANSPORT_LUNFLAGS_INITIATOR_ACCESS))
   continue;

  lun = deve->se_lun;
  if (!lun) {
   pr_err("%s device entries device pointer is"
    " NULL, but Initiator has access.\n",
    tpg->se_tpg_tfo->get_fabric_name());
   continue;
  }
  port = lun->lun_sep;
  if (!port) {
   pr_err("%s device entries device pointer is"
    " NULL, but Initiator has access.\n",
    tpg->se_tpg_tfo->get_fabric_name());
   continue;
  }
  if (port->sep_rtpi != rtpi)
   continue;

  atomic_inc(&deve->pr_ref_count);
  smp_mb__after_atomic_inc();
  spin_unlock_irq(&nacl->device_list_lock);

  return deve;
 }
 spin_unlock_irq(&nacl->device_list_lock);

 return ((void*)0);
}
