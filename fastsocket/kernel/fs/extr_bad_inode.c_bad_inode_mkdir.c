
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_inode_mkdir(struct inode *dir, struct dentry *dentry,
   int mode)
{
 return -EIO;
}
