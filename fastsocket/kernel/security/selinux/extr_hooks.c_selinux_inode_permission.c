
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct cred {int dummy; } ;


 struct cred* current_cred () ;
 int file_mask_to_av (int ,int) ;
 int inode_has_perm (struct cred const*,struct inode*,int ,int *) ;

__attribute__((used)) static int selinux_inode_permission(struct inode *inode, int mask)
{
 const struct cred *cred = current_cred();

 if (!mask) {

  return 0;
 }

 return inode_has_perm(cred, inode,
         file_mask_to_av(inode->i_mode, mask), ((void*)0));
}
