
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_write_ctxt {int w_first_new_cpos; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;
typedef unsigned int loff_t ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 unsigned int i_size_read (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_clusters_for_bytes (int ,unsigned int) ;
 int ocfs2_extend_no_holes (struct inode*,unsigned int,unsigned int) ;
 scalar_t__ ocfs2_sparse_alloc (struct ocfs2_super*) ;

__attribute__((used)) static int ocfs2_expand_nonsparse_inode(struct inode *inode, loff_t pos,
     unsigned len,
     struct ocfs2_write_ctxt *wc)
{
 int ret;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 loff_t newsize = pos + len;

 if (ocfs2_sparse_alloc(osb))
  return 0;

 if (newsize <= i_size_read(inode))
  return 0;

 ret = ocfs2_extend_no_holes(inode, newsize, pos);
 if (ret)
  mlog_errno(ret);

 wc->w_first_new_cpos =
  ocfs2_clusters_for_bytes(inode->i_sb, i_size_read(inode));

 return ret;
}
