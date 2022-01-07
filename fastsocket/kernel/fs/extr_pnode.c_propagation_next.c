
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next; } ;
struct vfsmount {int mnt_slave_list; TYPE_1__ mnt_slave; struct vfsmount* mnt_master; } ;


 int IS_MNT_NEW (struct vfsmount*) ;
 struct vfsmount* first_slave (struct vfsmount*) ;
 int list_empty (int *) ;
 struct vfsmount* next_peer (struct vfsmount*) ;
 struct vfsmount* next_slave (struct vfsmount*) ;

__attribute__((used)) static struct vfsmount *propagation_next(struct vfsmount *m,
      struct vfsmount *origin)
{

 if (!IS_MNT_NEW(m) && !list_empty(&m->mnt_slave_list))
  return first_slave(m);

 while (1) {
  struct vfsmount *next;
  struct vfsmount *master = m->mnt_master;

  if (master == origin->mnt_master) {
   next = next_peer(m);
   return ((next == origin) ? ((void*)0) : next);
  } else if (m->mnt_slave.next != &master->mnt_slave_list)
   return next_slave(m);


  m = master;
 }
}
