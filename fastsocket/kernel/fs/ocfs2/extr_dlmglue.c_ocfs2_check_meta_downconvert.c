
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int dummy; } ;
struct inode {int dummy; } ;


 int INODE_CACHE (struct inode*) ;
 int ocfs2_ci_checkpointed (int ,struct ocfs2_lock_res*,int) ;
 struct inode* ocfs2_lock_res_inode (struct ocfs2_lock_res*) ;

__attribute__((used)) static int ocfs2_check_meta_downconvert(struct ocfs2_lock_res *lockres,
     int new_level)
{
 struct inode *inode = ocfs2_lock_res_inode(lockres);

 return ocfs2_ci_checkpointed(INODE_CACHE(inode), lockres, new_level);
}
