
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct afs_server {int usage; TYPE_1__ addr; int cb_break_work; int cb_break_waitq; int cb_lock; void* cb_promises; void* fs_vnodes; int fs_lock; int sem; int grave; int link; struct afs_cell* cell; } ;
struct afs_cell {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 void* RB_ROOT ;
 int _enter (char*) ;
 int _leave (char*,struct afs_server*,int ) ;
 int afs_dispatch_give_up_callbacks ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 struct afs_server* kzalloc (int,int ) ;
 int memcpy (TYPE_1__*,struct in_addr const*,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct afs_server *afs_alloc_server(struct afs_cell *cell,
        const struct in_addr *addr)
{
 struct afs_server *server;

 _enter("");

 server = kzalloc(sizeof(struct afs_server), GFP_KERNEL);
 if (server) {
  atomic_set(&server->usage, 1);
  server->cell = cell;

  INIT_LIST_HEAD(&server->link);
  INIT_LIST_HEAD(&server->grave);
  init_rwsem(&server->sem);
  spin_lock_init(&server->fs_lock);
  server->fs_vnodes = RB_ROOT;
  server->cb_promises = RB_ROOT;
  spin_lock_init(&server->cb_lock);
  init_waitqueue_head(&server->cb_break_waitq);
  INIT_DELAYED_WORK(&server->cb_break_work,
      afs_dispatch_give_up_callbacks);

  memcpy(&server->addr, addr, sizeof(struct in_addr));
  server->addr.s_addr = addr->s_addr;
 }

 _leave(" = %p{%d}", server, atomic_read(&server->usage));
 return server;
}
