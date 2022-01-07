
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_lock; int i_default_acl; int i_acl; } ;




 struct posix_acl* posix_acl_dup (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct posix_acl *
shmem_get_acl(struct inode *inode, int type)
{
 struct posix_acl *acl = ((void*)0);

 spin_lock(&inode->i_lock);
 switch(type) {
  case 129:
   acl = posix_acl_dup(inode->i_acl);
   break;

  case 128:
   acl = posix_acl_dup(inode->i_default_acl);
   break;
 }
 spin_unlock(&inode->i_lock);

 return acl;
}
