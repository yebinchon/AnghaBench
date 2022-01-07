
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFDIR ;
 int gfs2_create_inode (struct inode*,struct dentry*,int,int ,int *,int ,int ) ;

__attribute__((used)) static int gfs2_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 return gfs2_create_inode(dir, dentry, S_IFDIR | mode, 0, ((void*)0), 0, 0);
}
