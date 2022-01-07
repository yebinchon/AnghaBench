
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {int cb_promised; struct afs_server* server; int server_rb; int cb_promise; int flags; } ;
struct afs_server {int fs_lock; int fs_vnodes; int cb_lock; int cb_promises; } ;


 int AFS_VNODE_DELETED ;
 int ASSERT (int) ;
 int _enter (char*,struct afs_server*) ;
 int _leave (char*) ;
 int afs_put_server (struct afs_server*) ;
 int rb_erase (int *,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void afs_vnode_deleted_remotely(struct afs_vnode *vnode)
{
 struct afs_server *server;

 _enter("{%p}", vnode->server);

 set_bit(AFS_VNODE_DELETED, &vnode->flags);

 server = vnode->server;
 if (server) {
  if (vnode->cb_promised) {
   spin_lock(&server->cb_lock);
   if (vnode->cb_promised) {
    rb_erase(&vnode->cb_promise,
      &server->cb_promises);
    vnode->cb_promised = 0;
   }
   spin_unlock(&server->cb_lock);
  }

  spin_lock(&server->fs_lock);
  rb_erase(&vnode->server_rb, &server->fs_vnodes);
  spin_unlock(&server->fs_lock);

  vnode->server = ((void*)0);
  afs_put_server(server);
 } else {
  ASSERT(!vnode->cb_promised);
 }

 _leave("");
}
