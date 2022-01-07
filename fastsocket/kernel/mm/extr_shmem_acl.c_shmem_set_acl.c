
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_lock; struct posix_acl* i_default_acl; struct posix_acl* i_acl; } ;




 void* posix_acl_dup (struct posix_acl*) ;
 int posix_acl_release (struct posix_acl*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
shmem_set_acl(struct inode *inode, int type, struct posix_acl *acl)
{
 struct posix_acl *free = ((void*)0);

 spin_lock(&inode->i_lock);
 switch(type) {
  case 129:
   free = inode->i_acl;
   inode->i_acl = posix_acl_dup(acl);
   break;

  case 128:
   free = inode->i_default_acl;
   inode->i_default_acl = posix_acl_dup(acl);
   break;
 }
 spin_unlock(&inode->i_lock);
 posix_acl_release(free);
}
