
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_ns_operations {int name; } ;
struct inode {int i_ino; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {struct proc_ns_operations* ns_ops; } ;


 TYPE_1__* PROC_I (struct inode*) ;
 char* dynamic_dname (struct dentry*,char*,int,char*,int ,int ) ;

__attribute__((used)) static char *ns_dname(struct dentry *dentry, char *buffer, int buflen)
{
 struct inode *inode = dentry->d_inode;
 const struct proc_ns_operations *ns_ops = PROC_I(inode)->ns_ops;

 return dynamic_dname(dentry, buffer, buflen, "%s:[%lu]",
  ns_ops->name, inode->i_ino);
}
