
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {int cb_promised; int lock; int pending_locks; int granted_locks; int cb_broken_work; int cb_promise; int flags; } ;
struct afs_server {int cb_lock; int cb_promises; } ;


 int AFS_VNODE_CB_BROKEN ;
 int _debug (char*) ;
 int _enter (char*) ;
 int afs_callback_update_worker ;
 int afs_lock_may_be_available (struct afs_vnode*) ;
 scalar_t__ list_empty (int *) ;
 int queue_work (int ,int *) ;
 int rb_erase (int *,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void afs_break_callback(struct afs_server *server,
          struct afs_vnode *vnode)
{
 _enter("");

 set_bit(AFS_VNODE_CB_BROKEN, &vnode->flags);

 if (vnode->cb_promised) {
  spin_lock(&vnode->lock);

  _debug("break callback");

  spin_lock(&server->cb_lock);
  if (vnode->cb_promised) {
   rb_erase(&vnode->cb_promise, &server->cb_promises);
   vnode->cb_promised = 0;
  }
  spin_unlock(&server->cb_lock);

  queue_work(afs_callback_update_worker, &vnode->cb_broken_work);
  if (list_empty(&vnode->granted_locks) &&
      !list_empty(&vnode->pending_locks))
   afs_lock_may_be_available(vnode);
  spin_unlock(&vnode->lock);
 }
}
