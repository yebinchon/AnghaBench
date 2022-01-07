
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct se_portal_group {int dummy; } ;
struct se_port {int sep_alua_lock; } ;
struct se_node_acl {int device_list_lock; struct se_dev_entry** device_list; } ;
struct se_lun_acl {int dummy; } ;
struct se_lun {int lun_se_dev; struct se_port* lun_sep; } ;
struct se_dev_entry {int attach_count; scalar_t__ creation_time; scalar_t__ lun_flags; int * se_lun_acl; int * se_lun; int pr_ref_count; int alua_port_list; } ;


 scalar_t__ atomic_read (int *) ;
 int core_scsi3_free_pr_reg_from_nacl (int ,struct se_node_acl*) ;
 int core_scsi3_ua_release_all (struct se_dev_entry*) ;
 int cpu_relax () ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irq (int *) ;

int core_disable_device_list_for_node(
 struct se_lun *lun,
 struct se_lun_acl *lun_acl,
 u32 mapped_lun,
 u32 lun_access,
 struct se_node_acl *nacl,
 struct se_portal_group *tpg)
{
 struct se_port *port = lun->lun_sep;
 struct se_dev_entry *deve = nacl->device_list[mapped_lun];
 spin_lock_bh(&port->sep_alua_lock);
 list_del(&deve->alua_port_list);
 spin_unlock_bh(&port->sep_alua_lock);




 while (atomic_read(&deve->pr_ref_count) != 0)
  cpu_relax();

 spin_lock_irq(&nacl->device_list_lock);



 core_scsi3_ua_release_all(deve);
 deve->se_lun = ((void*)0);
 deve->se_lun_acl = ((void*)0);
 deve->lun_flags = 0;
 deve->creation_time = 0;
 deve->attach_count--;
 spin_unlock_irq(&nacl->device_list_lock);

 core_scsi3_free_pr_reg_from_nacl(lun->lun_se_dev, nacl);
 return 0;
}
