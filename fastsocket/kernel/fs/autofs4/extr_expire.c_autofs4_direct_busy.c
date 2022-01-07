
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {int name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct autofs_info {int last_used; } ;


 int DPRINTK (char*,struct dentry*,int,int ) ;
 int autofs4_can_expire (struct dentry*,unsigned long,int) ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 int jiffies ;
 int may_umount_tree (struct vfsmount*) ;

__attribute__((used)) static int autofs4_direct_busy(struct vfsmount *mnt,
    struct dentry *top,
    unsigned long timeout,
    int do_now)
{
 DPRINTK("top %p %.*s",
  top, (int) top->d_name.len, top->d_name.name);


 if (!may_umount_tree(mnt)) {
  struct autofs_info *ino = autofs4_dentry_ino(top);
  if (ino)
   ino->last_used = jiffies;
  return 1;
 }


 if (!autofs4_can_expire(top, timeout, do_now))
  return 1;

 return 0;
}
