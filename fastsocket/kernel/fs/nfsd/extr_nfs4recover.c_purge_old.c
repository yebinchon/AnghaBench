
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; int d_inode; } ;


 scalar_t__ nfs4_has_reclaimed_state (int ,int) ;
 int printk (char*,int ) ;
 int vfs_rmdir (int ,struct dentry*) ;

__attribute__((used)) static int
purge_old(struct dentry *parent, struct dentry *child)
{
 int status;


 if (nfs4_has_reclaimed_state(child->d_name.name, 0))
  return 0;

 status = vfs_rmdir(parent->d_inode, child);
 if (status)
  printk("failed to remove client recovery directory %s\n",
    child->d_name.name);

 return 0;
}
