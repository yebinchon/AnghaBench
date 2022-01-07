
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int dummy; } ;
struct inode {int dummy; } ;


 int __ocfs2_stuff_meta_lvb (struct inode*) ;
 struct inode* ocfs2_lock_res_inode (struct ocfs2_lock_res*) ;

__attribute__((used)) static void ocfs2_set_meta_lvb(struct ocfs2_lock_res *lockres)
{
 struct inode *inode = ocfs2_lock_res_inode(lockres);

 __ocfs2_stuff_meta_lvb(inode);
}
