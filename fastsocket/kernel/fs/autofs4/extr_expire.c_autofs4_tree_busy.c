
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {int name; scalar_t__ len; } ;
struct dentry {int d_count; TYPE_1__ d_name; } ;
struct autofs_info {void* last_used; int count; } ;


 int DPRINTK (char*,struct dentry*,int,int ) ;
 unsigned int atomic_read (int *) ;
 int autofs4_can_expire (struct dentry*,unsigned long,int) ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 scalar_t__ autofs4_mount_busy (struct vfsmount*,struct dentry*) ;
 int d_invalidate (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int dcache_lock ;
 struct dentry* dget (struct dentry*) ;
 int dput (struct dentry*) ;
 void* jiffies ;
 struct dentry* next_dentry (struct dentry*,struct dentry*) ;
 int simple_positive (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int autofs4_tree_busy(struct vfsmount *mnt,
               struct dentry *top,
        unsigned long timeout,
        int do_now)
{
 struct autofs_info *top_ino = autofs4_dentry_ino(top);
 struct dentry *p;

 DPRINTK("top %p %.*s",
  top, (int)top->d_name.len, top->d_name.name);


 if (!simple_positive(top))
  return 1;

 spin_lock(&dcache_lock);
 for (p = top; p; p = next_dentry(p, top)) {

  if (!simple_positive(p))
   continue;

  DPRINTK("dentry %p %.*s",
   p, (int) p->d_name.len, p->d_name.name);

  p = dget(p);
  spin_unlock(&dcache_lock);







  if (d_mountpoint(p)) {
   if (autofs4_mount_busy(mnt, p)) {
    top_ino->last_used = jiffies;
    dput(p);
    return 1;
   }
  } else {
   struct autofs_info *ino = autofs4_dentry_ino(p);
   unsigned int ino_count = atomic_read(&ino->count);





   d_invalidate(p);


   if (p == top)
    ino_count += 2;
   else
    ino_count++;

   if (atomic_read(&p->d_count) > ino_count) {
    top_ino->last_used = jiffies;
    dput(p);
    return 1;
   }
  }
  dput(p);
  spin_lock(&dcache_lock);
 }
 spin_unlock(&dcache_lock);


 if (!autofs4_can_expire(top, timeout, do_now))
  return 1;

 return 0;
}
