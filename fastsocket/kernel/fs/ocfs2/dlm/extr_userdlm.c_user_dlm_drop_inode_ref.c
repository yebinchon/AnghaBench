
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int dummy; } ;
struct inode {int dummy; } ;


 int iput (struct inode*) ;
 struct inode* user_dlm_inode_from_user_lockres (struct user_lock_res*) ;

__attribute__((used)) static inline void user_dlm_drop_inode_ref(struct user_lock_res *lockres)
{
 struct inode *inode;
 inode = user_dlm_inode_from_user_lockres(lockres);
 iput(inode);
}
