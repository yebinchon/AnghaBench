
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocfs2_super {int sb; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 int __ocfs2_claim_clusters (struct ocfs2_super*,int *,struct ocfs2_alloc_context*,int,int,int *,int *) ;
 int mlog_errno (int) ;
 int ocfs2_clusters_to_blocks (int ,int ) ;
 int ocfs2_dx_dir_format_cluster (struct ocfs2_super*,int *,struct inode*,struct buffer_head**,int,int ) ;

__attribute__((used)) static int __ocfs2_dx_dir_new_cluster(struct inode *dir,
          u32 cpos, handle_t *handle,
          struct ocfs2_alloc_context *data_ac,
          struct buffer_head **dx_leaves,
          int num_dx_leaves, u64 *ret_phys_blkno)
{
 int ret;
 u32 phys, num;
 u64 phys_blkno;
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);







 ret = __ocfs2_claim_clusters(osb, handle, data_ac, 1, 1, &phys, &num);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }





 phys_blkno = ocfs2_clusters_to_blocks(osb->sb, phys);
 ret = ocfs2_dx_dir_format_cluster(osb, handle, dir, dx_leaves,
       num_dx_leaves, phys_blkno);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 *ret_phys_blkno = phys_blkno;
out:
 return ret;
}
