
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int gfs2_create_inode (struct inode*,struct dentry*,int,int ,int *,int ,int ) ;

__attribute__((used)) static int gfs2_mknod(struct inode *dir, struct dentry *dentry, int mode,
        dev_t dev)
{
 return gfs2_create_inode(dir, dentry, mode, dev, ((void*)0), 0, 0);
}
