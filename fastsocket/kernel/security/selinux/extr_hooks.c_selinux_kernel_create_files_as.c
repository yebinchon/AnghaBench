
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_security_struct {int create_sid; } ;
struct inode_security_struct {int sid; } ;
struct inode {struct inode_security_struct* i_security; } ;
struct cred {struct task_security_struct* security; } ;


 int KERNEL_SERVICE__CREATE_FILES_AS ;
 int SECCLASS_KERNEL_SERVICE ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int current_sid () ;

__attribute__((used)) static int selinux_kernel_create_files_as(struct cred *new, struct inode *inode)
{
 struct inode_security_struct *isec = inode->i_security;
 struct task_security_struct *tsec = new->security;
 u32 sid = current_sid();
 int ret;

 ret = avc_has_perm(sid, isec->sid,
      SECCLASS_KERNEL_SERVICE,
      KERNEL_SERVICE__CREATE_FILES_AS,
      ((void*)0));

 if (ret == 0)
  tsec->create_sid = isec->sid;
 return ret;
}
