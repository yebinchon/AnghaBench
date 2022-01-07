
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ncp_create_new (struct inode*,struct dentry*,int,int ,int ) ;

__attribute__((used)) static int ncp_create(struct inode *dir, struct dentry *dentry, int mode,
  struct nameidata *nd)
{
 return ncp_create_new(dir, dentry, mode, 0, 0);
}
