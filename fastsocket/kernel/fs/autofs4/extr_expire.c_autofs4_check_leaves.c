
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {int name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;


 int DPRINTK (char*,struct dentry*,int,int ) ;
 scalar_t__ autofs4_can_expire (struct dentry*,unsigned long,int) ;
 scalar_t__ autofs4_mount_busy (struct vfsmount*,struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int dcache_lock ;
 struct dentry* dget (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* next_dentry (struct dentry*,struct dentry*) ;
 int simple_positive (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dentry *autofs4_check_leaves(struct vfsmount *mnt,
        struct dentry *parent,
        unsigned long timeout,
        int do_now)
{
 struct dentry *p;

 DPRINTK("parent %p %.*s",
  parent, (int)parent->d_name.len, parent->d_name.name);

 spin_lock(&dcache_lock);
 for (p = parent; p; p = next_dentry(p, parent)) {

  if (!simple_positive(p))
   continue;

  DPRINTK("dentry %p %.*s",
   p, (int) p->d_name.len, p->d_name.name);

  p = dget(p);
  spin_unlock(&dcache_lock);

  if (d_mountpoint(p)) {

   if (autofs4_mount_busy(mnt, p))
    goto cont;


   if (autofs4_can_expire(p, timeout, do_now))
    return p;
  }
cont:
  dput(p);
  spin_lock(&dcache_lock);
 }
 spin_unlock(&dcache_lock);
 return ((void*)0);
}
