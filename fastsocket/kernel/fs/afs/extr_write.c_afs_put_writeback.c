
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_writeback {scalar_t__ usage; struct afs_vnode* vnode; } ;
struct afs_vnode {int writeback_lock; } ;


 int _enter (char*,scalar_t__) ;
 int afs_free_writeback (struct afs_writeback*) ;
 int afs_unlink_writeback (struct afs_writeback*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void afs_put_writeback(struct afs_writeback *wb)
{
 struct afs_vnode *vnode = wb->vnode;

 _enter("{%d}", wb->usage);

 spin_lock(&vnode->writeback_lock);
 if (--wb->usage == 0)
  afs_unlink_writeback(wb);
 else
  wb = ((void*)0);
 spin_unlock(&vnode->writeback_lock);
 if (wb)
  afs_free_writeback(wb);
}
