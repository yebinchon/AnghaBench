
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode_smack {int smk_inode; } ;
struct inode {struct inode_smack* i_security; } ;


 int task_security (struct task_struct*) ;

__attribute__((used)) static void smack_task_to_inode(struct task_struct *p, struct inode *inode)
{
 struct inode_smack *isp = inode->i_security;
 isp->smk_inode = task_security(p);
}
