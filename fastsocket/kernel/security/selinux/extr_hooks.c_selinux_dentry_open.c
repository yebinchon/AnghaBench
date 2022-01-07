
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode_security_struct {int sid; } ;
struct inode {struct inode_security_struct* i_security; } ;
struct file_security_struct {int pseqno; int isid; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {struct file_security_struct* f_security; TYPE_2__ f_path; } ;
struct cred {int dummy; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int avc_policy_seqno () ;
 int inode_has_perm (struct cred const*,struct inode*,int ,int *) ;
 int open_file_to_av (struct file*) ;

__attribute__((used)) static int selinux_dentry_open(struct file *file, const struct cred *cred)
{
 struct file_security_struct *fsec;
 struct inode *inode;
 struct inode_security_struct *isec;

 inode = file->f_path.dentry->d_inode;
 fsec = file->f_security;
 isec = inode->i_security;







 fsec->isid = isec->sid;
 fsec->pseqno = avc_policy_seqno();
 return inode_has_perm(cred, inode, open_file_to_av(file), ((void*)0));
}
