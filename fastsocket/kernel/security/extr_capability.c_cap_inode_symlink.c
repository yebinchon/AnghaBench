
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static int cap_inode_symlink(struct inode *inode, struct dentry *dentry,
        const char *name)
{
 return 0;
}
