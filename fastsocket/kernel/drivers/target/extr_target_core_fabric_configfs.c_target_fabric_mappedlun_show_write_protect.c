
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_node_acl {int device_list_lock; struct se_dev_entry** device_list; } ;
struct se_lun_acl {size_t mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_dev_entry {int lun_flags; } ;
typedef int ssize_t ;


 int TRANSPORT_LUNFLAGS_READ_ONLY ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t target_fabric_mappedlun_show_write_protect(
 struct se_lun_acl *lacl,
 char *page)
{
 struct se_node_acl *se_nacl = lacl->se_lun_nacl;
 struct se_dev_entry *deve;
 ssize_t len;

 spin_lock_irq(&se_nacl->device_list_lock);
 deve = se_nacl->device_list[lacl->mapped_lun];
 len = sprintf(page, "%d\n",
   (deve->lun_flags & TRANSPORT_LUNFLAGS_READ_ONLY) ?
   1 : 0);
 spin_unlock_irq(&se_nacl->device_list_lock);

 return len;
}
