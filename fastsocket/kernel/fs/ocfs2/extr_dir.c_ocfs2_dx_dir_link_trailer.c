
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dx_root_block {int dr_free_blk; } ;
struct ocfs2_dir_block_trailer {int db_free_next; } ;
struct inode {int i_sb; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;


 int INODE_CACHE (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int cpu_to_le64 (int ) ;
 int mlog_errno (int) ;
 int ocfs2_journal_access_dr (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 struct ocfs2_dir_block_trailer* ocfs2_trailer_from_bh (struct buffer_head*,int ) ;

__attribute__((used)) static int ocfs2_dx_dir_link_trailer(struct inode *dir, handle_t *handle,
         struct buffer_head *dx_root_bh,
         struct buffer_head *dirdata_bh)
{
 int ret;
 struct ocfs2_dx_root_block *dx_root;
 struct ocfs2_dir_block_trailer *trailer;

 ret = ocfs2_journal_access_dr(handle, INODE_CACHE(dir), dx_root_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 trailer = ocfs2_trailer_from_bh(dirdata_bh, dir->i_sb);
 dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;

 trailer->db_free_next = dx_root->dr_free_blk;
 dx_root->dr_free_blk = cpu_to_le64(dirdata_bh->b_blocknr);

 ocfs2_journal_dirty(handle, dx_root_bh);

out:
 return ret;
}
