
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct ctl_table_header {int root; } ;
struct ctl_table {int dummy; } ;
struct TYPE_2__ {struct ctl_table* sysctl_entry; } ;


 int EACCES ;
 scalar_t__ IS_ERR (struct ctl_table_header*) ;
 int MAY_EXEC ;
 int MAY_WRITE ;
 TYPE_1__* PROC_I (struct inode*) ;
 int PTR_ERR (struct ctl_table_header*) ;
 scalar_t__ S_ISREG (int ) ;
 struct ctl_table_header* grab_header (struct inode*) ;
 int sysctl_head_finish (struct ctl_table_header*) ;
 int sysctl_perm (int ,struct ctl_table*,int) ;

__attribute__((used)) static int proc_sys_permission(struct inode *inode, int mask)
{




 struct ctl_table_header *head;
 struct ctl_table *table;
 int error;


 if ((mask & MAY_EXEC) && S_ISREG(inode->i_mode))
  return -EACCES;

 head = grab_header(inode);
 if (IS_ERR(head))
  return PTR_ERR(head);

 table = PROC_I(inode)->sysctl_entry;
 if (!table)
  error = mask & MAY_WRITE ? -EACCES : 0;
 else
  error = sysctl_perm(head->root, table, mask);

 sysctl_head_finish(head);
 return error;
}
