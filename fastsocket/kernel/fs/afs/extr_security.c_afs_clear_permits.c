
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {int permits_lock; struct afs_permits* permits; TYPE_1__ fid; } ;
struct afs_permits {int rcu; } ;


 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int afs_zap_permits ;
 int call_rcu (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (struct afs_permits*,int *) ;

void afs_clear_permits(struct afs_vnode *vnode)
{
 struct afs_permits *permits;

 _enter("{%x:%u}", vnode->fid.vid, vnode->fid.vnode);

 mutex_lock(&vnode->permits_lock);
 permits = vnode->permits;
 rcu_assign_pointer(vnode->permits, ((void*)0));
 mutex_unlock(&vnode->permits_lock);

 if (permits)
  call_rcu(&permits->rcu, afs_zap_permits);
 _leave("");
}
