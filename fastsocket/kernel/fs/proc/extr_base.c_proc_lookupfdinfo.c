
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int proc_fdinfo_instantiate ;
 struct dentry* proc_lookupfd_common (struct inode*,struct dentry*,int ) ;

__attribute__((used)) static struct dentry *proc_lookupfdinfo(struct inode *dir,
     struct dentry *dentry,
     struct nameidata *nd)
{
 return proc_lookupfd_common(dir, dentry, proc_fdinfo_instantiate);
}
