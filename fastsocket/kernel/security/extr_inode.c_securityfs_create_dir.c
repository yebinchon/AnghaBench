
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int S_IFDIR ;
 int S_IRUGO ;
 int S_IRWXU ;
 int S_IXUGO ;
 struct dentry* securityfs_create_file (char const*,int,struct dentry*,int *,int *) ;

struct dentry *securityfs_create_dir(const char *name, struct dentry *parent)
{
 return securityfs_create_file(name,
          S_IFDIR | S_IRWXU | S_IRUGO | S_IXUGO,
          parent, ((void*)0), ((void*)0));
}
