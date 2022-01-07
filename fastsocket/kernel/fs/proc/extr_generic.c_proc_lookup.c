
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int PDE (struct inode*) ;
 struct dentry* proc_lookup_de (int ,struct inode*,struct dentry*) ;

struct dentry *proc_lookup(struct inode *dir, struct dentry *dentry,
  struct nameidata *nd)
{
 return proc_lookup_de(PDE(dir), dir, dentry);
}
