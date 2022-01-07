
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int EAGAIN ;
 int posix_acl_permission (struct inode*,struct posix_acl*,int) ;
 int posix_acl_release (struct posix_acl*) ;
 struct posix_acl* shmem_get_acl (struct inode*,int ) ;

int
shmem_check_acl(struct inode *inode, int mask)
{
 struct posix_acl *acl = shmem_get_acl(inode, ACL_TYPE_ACCESS);

 if (acl) {
  int error = posix_acl_permission(inode, acl, mask);
  posix_acl_release(acl);
  return error;
 }
 return -EAGAIN;
}
