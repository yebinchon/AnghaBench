
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;


 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,int ,struct dentry*) ;

__attribute__((used)) static int v9fs_cached_dentry_delete(struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 P9_DPRINTK(P9_DEBUG_VFS, " dentry: %s (%p)\n", dentry->d_name.name,
         dentry);

 if(!inode)
  return 1;

 return 0;
}
