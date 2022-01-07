
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ocfs2_super {int sb; } ;
struct ocfs2_group_desc {int bg_blkno; int bg_bits; } ;
struct TYPE_3__ {int cl_cpg; int cl_bpc; } ;
struct TYPE_4__ {TYPE_1__ i_chain; } ;
struct ocfs2_dinode {TYPE_2__ id2; int i_clusters; } ;
struct inode {int i_mutex; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int EINVAL ;
 int EROFS ;
 int GLOBAL_BITMAP_SYSTEM_INODE ;
 scalar_t__ IS_ERR (int *) ;
 int ML_ERROR ;
 int OCFS2_GROUP_EXTEND_CREDITS ;
 int OCFS2_INVALID_SLOT ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int iput (struct inode*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit_void () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_group_bitmap_size (int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_is_soft_readonly (struct ocfs2_super*) ;
 int ocfs2_read_group_descriptor (struct inode*,struct ocfs2_dinode*,int ,struct buffer_head**) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_update_last_group_and_inode (int *,struct inode*,struct buffer_head*,struct buffer_head*,scalar_t__,int) ;
 int ocfs2_update_super_and_backups (struct inode*,int) ;
 int ocfs2_which_cluster_group (struct inode*,scalar_t__) ;

int ocfs2_group_extend(struct inode * inode, int new_clusters)
{
 int ret;
 handle_t *handle;
 struct buffer_head *main_bm_bh = ((void*)0);
 struct buffer_head *group_bh = ((void*)0);
 struct inode *main_bm_inode = ((void*)0);
 struct ocfs2_dinode *fe = ((void*)0);
 struct ocfs2_group_desc *group = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 u16 cl_bpc;
 u32 first_new_cluster;
 u64 lgd_blkno;

 mlog_entry_void();

 if (ocfs2_is_hard_readonly(osb) || ocfs2_is_soft_readonly(osb))
  return -EROFS;

 if (new_clusters < 0)
  return -EINVAL;
 else if (new_clusters == 0)
  return 0;

 main_bm_inode = ocfs2_get_system_file_inode(osb,
          GLOBAL_BITMAP_SYSTEM_INODE,
          OCFS2_INVALID_SLOT);
 if (!main_bm_inode) {
  ret = -EINVAL;
  mlog_errno(ret);
  goto out;
 }

 mutex_lock(&main_bm_inode->i_mutex);

 ret = ocfs2_inode_lock(main_bm_inode, &main_bm_bh, 1);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_mutex;
 }

 fe = (struct ocfs2_dinode *)main_bm_bh->b_data;



 BUG_ON(!OCFS2_IS_VALID_DINODE(fe));

 if (le16_to_cpu(fe->id2.i_chain.cl_cpg) !=
     ocfs2_group_bitmap_size(osb->sb) * 8) {
  mlog(ML_ERROR, "The disk is too old and small. "
       "Force to do offline resize.");
  ret = -EINVAL;
  goto out_unlock;
 }

 first_new_cluster = le32_to_cpu(fe->i_clusters);
 lgd_blkno = ocfs2_which_cluster_group(main_bm_inode,
           first_new_cluster - 1);

 ret = ocfs2_read_group_descriptor(main_bm_inode, fe, lgd_blkno,
       &group_bh);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_unlock;
 }
 group = (struct ocfs2_group_desc *)group_bh->b_data;

 cl_bpc = le16_to_cpu(fe->id2.i_chain.cl_bpc);
 if (le16_to_cpu(group->bg_bits) / cl_bpc + new_clusters >
  le16_to_cpu(fe->id2.i_chain.cl_cpg)) {
  ret = -EINVAL;
  goto out_unlock;
 }

 mlog(0, "extend the last group at %llu, new clusters = %d\n",
      (unsigned long long)le64_to_cpu(group->bg_blkno), new_clusters);

 handle = ocfs2_start_trans(osb, OCFS2_GROUP_EXTEND_CREDITS);
 if (IS_ERR(handle)) {
  mlog_errno(PTR_ERR(handle));
  ret = -EINVAL;
  goto out_unlock;
 }


 ret = ocfs2_update_last_group_and_inode(handle, main_bm_inode,
      main_bm_bh, group_bh,
      first_new_cluster,
      new_clusters);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ocfs2_update_super_and_backups(main_bm_inode, new_clusters);

out_commit:
 ocfs2_commit_trans(osb, handle);
out_unlock:
 brelse(group_bh);
 brelse(main_bm_bh);

 ocfs2_inode_unlock(main_bm_inode, 1);

out_mutex:
 mutex_unlock(&main_bm_inode->i_mutex);
 iput(main_bm_inode);

out:
 mlog_exit_void();
 return ret;
}
