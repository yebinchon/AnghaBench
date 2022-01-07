
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_vnode {int cb_promised; int cb_promise; struct afs_server* server; } ;
struct TYPE_2__ {int * rb_node; } ;
struct afs_server {int cb_lock; TYPE_1__ cb_promises; } ;


 int ASSERT (int ) ;
 int _enter (char*,int) ;
 int _leave (char*) ;
 int rb_erase (int *,TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void afs_discard_callback_on_delete(struct afs_vnode *vnode)
{
 struct afs_server *server = vnode->server;

 _enter("%d", vnode->cb_promised);

 if (!vnode->cb_promised) {
  _leave(" [not promised]");
  return;
 }

 ASSERT(server != ((void*)0));

 spin_lock(&server->cb_lock);
 if (vnode->cb_promised) {
  ASSERT(server->cb_promises.rb_node != ((void*)0));
  rb_erase(&vnode->cb_promise, &server->cb_promises);
  vnode->cb_promised = 0;
 }
 spin_unlock(&server->cb_lock);
 _leave("");
}
