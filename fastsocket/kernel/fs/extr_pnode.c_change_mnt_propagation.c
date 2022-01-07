
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_flags; int * mnt_master; int mnt_slave; } ;


 int MNT_UNBINDABLE ;
 int MS_SHARED ;
 int MS_SLAVE ;
 int MS_UNBINDABLE ;
 int do_make_slave (struct vfsmount*) ;
 int list_del_init (int *) ;
 int set_mnt_shared (struct vfsmount*) ;

void change_mnt_propagation(struct vfsmount *mnt, int type)
{
 if (type == MS_SHARED) {
  set_mnt_shared(mnt);
  return;
 }
 do_make_slave(mnt);
 if (type != MS_SLAVE) {
  list_del_init(&mnt->mnt_slave);
  mnt->mnt_master = ((void*)0);
  if (type == MS_UNBINDABLE)
   mnt->mnt_flags |= MNT_UNBINDABLE;
  else
   mnt->mnt_flags &= ~MNT_UNBINDABLE;
 }
}
