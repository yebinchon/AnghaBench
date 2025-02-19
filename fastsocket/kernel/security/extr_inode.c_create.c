
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IALLUGO ;
 int S_IFREG ;
 int mknod (struct inode*,struct dentry*,int,int ) ;

__attribute__((used)) static int create(struct inode *dir, struct dentry *dentry, int mode)
{
 mode = (mode & S_IALLUGO) | S_IFREG;
 return mknod(dir, dentry, mode, 0);
}
