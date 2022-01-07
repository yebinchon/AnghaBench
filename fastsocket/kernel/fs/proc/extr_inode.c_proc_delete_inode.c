
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_ns_operations {int (* put ) (void*) ;} ;
struct proc_dir_entry {int dummy; } ;
struct inode {int i_data; } ;
struct TYPE_2__ {void* ns; struct proc_ns_operations* ns_ops; scalar_t__ sysctl; struct proc_dir_entry* pde; int pid; } ;


 TYPE_1__* PROC_I (struct inode*) ;
 int clear_inode (struct inode*) ;
 int de_put (struct proc_dir_entry*) ;
 int put_pid (int ) ;
 int stub1 (void*) ;
 int sysctl_head_put (scalar_t__) ;
 int truncate_inode_pages (int *,int ) ;

__attribute__((used)) static void proc_delete_inode(struct inode *inode)
{
 struct proc_dir_entry *de;
 const struct proc_ns_operations *ns_ops;
 void *ns;

 truncate_inode_pages(&inode->i_data, 0);


 put_pid(PROC_I(inode)->pid);


 de = PROC_I(inode)->pde;
 if (de)
  de_put(de);
 if (PROC_I(inode)->sysctl)
  sysctl_head_put(PROC_I(inode)->sysctl);
 clear_inode(inode);

 ns_ops = PROC_I(inode)->ns_ops;
 ns = PROC_I(inode)->ns;
 if (ns_ops && ns)
  ns_ops->put(ns);
}
