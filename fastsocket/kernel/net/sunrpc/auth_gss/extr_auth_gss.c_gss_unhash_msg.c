
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct gss_upcall_msg {int list; TYPE_1__* inode; } ;
struct TYPE_2__ {struct inode vfs_inode; } ;


 int __gss_unhash_msg (struct gss_upcall_msg*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
gss_unhash_msg(struct gss_upcall_msg *gss_msg)
{
 struct inode *inode = &gss_msg->inode->vfs_inode;

 if (list_empty(&gss_msg->list))
  return;
 spin_lock(&inode->i_lock);
 if (!list_empty(&gss_msg->list))
  __gss_unhash_msg(gss_msg);
 spin_unlock(&inode->i_lock);
}
