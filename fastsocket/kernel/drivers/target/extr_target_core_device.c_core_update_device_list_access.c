
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct se_node_acl {int device_list_lock; struct se_dev_entry** device_list; } ;
struct se_dev_entry {size_t lun_flags; } ;


 size_t TRANSPORT_LUNFLAGS_READ_ONLY ;
 size_t TRANSPORT_LUNFLAGS_READ_WRITE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void core_update_device_list_access(
 u32 mapped_lun,
 u32 lun_access,
 struct se_node_acl *nacl)
{
 struct se_dev_entry *deve;

 spin_lock_irq(&nacl->device_list_lock);
 deve = nacl->device_list[mapped_lun];
 if (lun_access & TRANSPORT_LUNFLAGS_READ_WRITE) {
  deve->lun_flags &= ~TRANSPORT_LUNFLAGS_READ_ONLY;
  deve->lun_flags |= TRANSPORT_LUNFLAGS_READ_WRITE;
 } else {
  deve->lun_flags &= ~TRANSPORT_LUNFLAGS_READ_WRITE;
  deve->lun_flags |= TRANSPORT_LUNFLAGS_READ_ONLY;
 }
 spin_unlock_irq(&nacl->device_list_lock);
}
