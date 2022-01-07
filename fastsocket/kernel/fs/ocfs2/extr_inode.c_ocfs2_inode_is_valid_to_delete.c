
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {scalar_t__ dc_task; struct inode* root_inode; } ;
struct ocfs2_inode_info {int ip_flags; int ip_lock; scalar_t__ ip_blkno; } ;
struct inode {unsigned long long i_ino; int i_sb; } ;


 int ML_ERROR ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_SKIP_DELETE ;
 int OCFS2_INODE_SYSTEM_FILE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 scalar_t__ current ;
 int mlog (int ,char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_inode_is_valid_to_delete(struct inode *inode)
{
 int ret = 0;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);



 if (inode == osb->root_inode) {
  mlog(ML_ERROR, "Skipping delete of root inode.\n");
  goto bail;
 }






 if (current == osb->dc_task) {
  mlog(0, "Skipping delete of %lu because we're currently "
       "in downconvert\n", inode->i_ino);
  goto bail;
 }

 spin_lock(&oi->ip_lock);



 if (oi->ip_flags & OCFS2_INODE_SYSTEM_FILE) {
  mlog(ML_ERROR, "Skipping delete of system file %llu\n",
       (unsigned long long)oi->ip_blkno);
  goto bail_unlock;
 }




 if (oi->ip_flags & OCFS2_INODE_SKIP_DELETE) {
  mlog(0, "Skipping delete of %lu because another node "
       "has done this for us.\n", inode->i_ino);
  goto bail_unlock;
 }

 ret = 1;
bail_unlock:
 spin_unlock(&oi->ip_lock);
bail:
 return ret;
}
