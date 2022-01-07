
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int atomic_set (int *,int) ;
 int ima_delete_rules () ;
 int * ima_policy ;
 int ima_update_policy () ;
 int policy_opencount ;
 int securityfs_remove (int *) ;
 int valid_policy ;

__attribute__((used)) static int ima_release_policy(struct inode *inode, struct file *file)
{
 if (!valid_policy) {
  ima_delete_rules();
  valid_policy = 1;
  atomic_set(&policy_opencount, 1);
  return 0;
 }
 ima_update_policy();
 securityfs_remove(ima_policy);
 ima_policy = ((void*)0);
 return 0;
}
