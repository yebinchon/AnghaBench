
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct inode_security_struct {int initialized; int sid; } ;
struct inode {struct inode_security_struct* i_security; } ;


 int task_sid (struct task_struct*) ;

__attribute__((used)) static void selinux_task_to_inode(struct task_struct *p,
      struct inode *inode)
{
 struct inode_security_struct *isec = inode->i_security;
 u32 sid = task_sid(p);

 isec->sid = sid;
 isec->initialized = 1;
}
