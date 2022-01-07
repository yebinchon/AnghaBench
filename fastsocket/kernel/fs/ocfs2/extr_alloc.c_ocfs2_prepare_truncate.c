
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_truncate_context {struct buffer_head* tc_last_eb_bh; int tc_dealloc; } ;
struct ocfs2_super {int sb; } ;
struct ocfs2_extent_block {int dummy; } ;
struct TYPE_3__ {scalar_t__ l_tree_depth; } ;
struct TYPE_4__ {TYPE_1__ i_list; } ;
struct ocfs2_dinode {int i_last_eb_blk; TYPE_2__ id2; int i_size; int i_clusters; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INODE_CACHE (struct inode*) ;
 int i_size_read (struct inode*) ;
 struct ocfs2_truncate_context* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,int ,unsigned int,unsigned long long) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit_void () ;
 unsigned int ocfs2_clusters_for_bytes (int ,int ) ;
 int ocfs2_free_truncate_context (struct ocfs2_truncate_context*) ;
 int ocfs2_init_dealloc_ctxt (int *) ;
 int ocfs2_read_extent_block (int ,scalar_t__,struct buffer_head**) ;

int ocfs2_prepare_truncate(struct ocfs2_super *osb,
      struct inode *inode,
      struct buffer_head *fe_bh,
      struct ocfs2_truncate_context **tc)
{
 int status;
 unsigned int new_i_clusters;
 struct ocfs2_dinode *fe;
 struct ocfs2_extent_block *eb;
 struct buffer_head *last_eb_bh = ((void*)0);

 mlog_entry_void();

 *tc = ((void*)0);

 new_i_clusters = ocfs2_clusters_for_bytes(osb->sb,
        i_size_read(inode));
 fe = (struct ocfs2_dinode *) fe_bh->b_data;

 mlog(0, "fe->i_clusters = %u, new_i_clusters = %u, fe->i_size ="
      "%llu\n", le32_to_cpu(fe->i_clusters), new_i_clusters,
      (unsigned long long)le64_to_cpu(fe->i_size));

 *tc = kzalloc(sizeof(struct ocfs2_truncate_context), GFP_KERNEL);
 if (!(*tc)) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }
 ocfs2_init_dealloc_ctxt(&(*tc)->tc_dealloc);

 if (fe->id2.i_list.l_tree_depth) {
  status = ocfs2_read_extent_block(INODE_CACHE(inode),
       le64_to_cpu(fe->i_last_eb_blk),
       &last_eb_bh);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
  eb = (struct ocfs2_extent_block *) last_eb_bh->b_data;
 }

 (*tc)->tc_last_eb_bh = last_eb_bh;

 status = 0;
bail:
 if (status < 0) {
  if (*tc)
   ocfs2_free_truncate_context(*tc);
  *tc = ((void*)0);
 }
 mlog_exit_void();
 return status;
}
