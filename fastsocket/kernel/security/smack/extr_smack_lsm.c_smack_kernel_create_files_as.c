
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_smack {int smk_inode; } ;
struct inode {struct inode_smack* i_security; } ;
struct cred {int security; } ;



__attribute__((used)) static int smack_kernel_create_files_as(struct cred *new,
     struct inode *inode)
{
 struct inode_smack *isp = inode->i_security;

 new->security = isp->smk_inode;
 return 0;
}
