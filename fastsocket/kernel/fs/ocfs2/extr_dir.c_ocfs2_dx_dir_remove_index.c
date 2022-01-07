
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dx_root_block {int dr_suballoc_bit; int dr_blkno; int dr_suballoc_slot; } ;
struct ocfs2_dinode {int i_dx_root; int i_dyn_features; } ;
struct inode {int i_mutex; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int ip_dyn_features; } ;


 int ENOMEM ;
 int EXTENT_ALLOC_SYSTEM_INODE ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_DX_ROOT_REMOVE_CREDITS ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INDEXED_DIR_FL ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le64 (unsigned long long) ;
 int iput (struct inode*) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_suballoc_bits (int *,struct inode*,struct buffer_head*,int ,int ,int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_which_suballoc_group (int ,int ) ;

__attribute__((used)) static int ocfs2_dx_dir_remove_index(struct inode *dir,
         struct buffer_head *di_bh,
         struct buffer_head *dx_root_bh)
{
 int ret;
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_dx_root_block *dx_root;
 struct inode *dx_alloc_inode = ((void*)0);
 struct buffer_head *dx_alloc_bh = ((void*)0);
 handle_t *handle;
 u64 blk;
 u16 bit;
 u64 bg_blkno;

 dx_root = (struct ocfs2_dx_root_block *) dx_root_bh->b_data;

 dx_alloc_inode = ocfs2_get_system_file_inode(osb,
     EXTENT_ALLOC_SYSTEM_INODE,
     le16_to_cpu(dx_root->dr_suballoc_slot));
 if (!dx_alloc_inode) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }
 mutex_lock(&dx_alloc_inode->i_mutex);

 ret = ocfs2_inode_lock(dx_alloc_inode, &dx_alloc_bh, 1);
 if (ret) {
  mlog_errno(ret);
  goto out_mutex;
 }

 handle = ocfs2_start_trans(osb, OCFS2_DX_ROOT_REMOVE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out_unlock;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(dir), di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 OCFS2_I(dir)->ip_dyn_features &= ~OCFS2_INDEXED_DIR_FL;
 di->i_dyn_features = cpu_to_le16(OCFS2_I(dir)->ip_dyn_features);
 di->i_dx_root = cpu_to_le64(0ULL);

 ocfs2_journal_dirty(handle, di_bh);

 blk = le64_to_cpu(dx_root->dr_blkno);
 bit = le16_to_cpu(dx_root->dr_suballoc_bit);
 bg_blkno = ocfs2_which_suballoc_group(blk, bit);
 ret = ocfs2_free_suballoc_bits(handle, dx_alloc_inode, dx_alloc_bh,
           bit, bg_blkno, 1);
 if (ret)
  mlog_errno(ret);

out_commit:
 ocfs2_commit_trans(osb, handle);

out_unlock:
 ocfs2_inode_unlock(dx_alloc_inode, 1);

out_mutex:
 mutex_unlock(&dx_alloc_inode->i_mutex);
 brelse(dx_alloc_bh);
out:
 iput(dx_alloc_inode);
 return ret;
}
