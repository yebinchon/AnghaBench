
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int nd_set_link (struct nameidata*,int ) ;
 int read_link (struct dentry*) ;

__attribute__((used)) static void *fuse_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 nd_set_link(nd, read_link(dentry));
 return ((void*)0);
}
