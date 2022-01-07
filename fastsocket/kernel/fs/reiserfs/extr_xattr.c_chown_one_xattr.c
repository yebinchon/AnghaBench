
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int dummy; } ;
struct dentry {int dummy; } ;


 int reiserfs_setattr (struct dentry*,struct iattr*) ;

__attribute__((used)) static int chown_one_xattr(struct dentry *dentry, void *data)
{
 struct iattr *attrs = data;
 return reiserfs_setattr(dentry, attrs);
}
