
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {scalar_t__ cb_promised; int vfs_inode; struct afs_server* server; } ;
struct afs_server {int cb_lock; int cb_break_waitq; } ;


 int ASSERT (int ) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int _debug (char*,int *) ;
 int _enter (char*,scalar_t__) ;
 int _leave (char*) ;
 int add_wait_queue (int *,int *) ;
 scalar_t__ afs_breakring_space (struct afs_server*) ;
 int afs_do_give_up_callback (struct afs_server*,struct afs_vnode*) ;
 int current ;
 int myself ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void afs_give_up_callback(struct afs_vnode *vnode)
{
 struct afs_server *server = vnode->server;

 DECLARE_WAITQUEUE(myself, current);

 _enter("%d", vnode->cb_promised);

 _debug("GIVE UP INODE %p", &vnode->vfs_inode);

 if (!vnode->cb_promised) {
  _leave(" [not promised]");
  return;
 }

 ASSERT(server != ((void*)0));

 spin_lock(&server->cb_lock);
 if (vnode->cb_promised && afs_breakring_space(server) == 0) {
  add_wait_queue(&server->cb_break_waitq, &myself);
  for (;;) {
   set_current_state(TASK_UNINTERRUPTIBLE);
   if (!vnode->cb_promised ||
       afs_breakring_space(server) != 0)
    break;
   spin_unlock(&server->cb_lock);
   schedule();
   spin_lock(&server->cb_lock);
  }
  remove_wait_queue(&server->cb_break_waitq, &myself);
  __set_current_state(TASK_RUNNING);
 }



 if (vnode->cb_promised)
  afs_do_give_up_callback(server, vnode);

 spin_unlock(&server->cb_lock);
 _leave("");
}
