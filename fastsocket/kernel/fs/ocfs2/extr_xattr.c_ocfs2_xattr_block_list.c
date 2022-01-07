
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_header {int dummy; } ;
struct TYPE_2__ {struct ocfs2_xattr_header xb_header; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; int xb_flags; } ;
struct ocfs2_dinode {int i_xattr_loc; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int OCFS2_XATTR_INDEXED ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_read_xattr_block (struct inode*,int ,struct buffer_head**) ;
 int ocfs2_xattr_list_entries (struct inode*,struct ocfs2_xattr_header*,char*,size_t) ;
 int ocfs2_xattr_tree_list_index_block (struct inode*,struct buffer_head*,char*,size_t) ;

__attribute__((used)) static int ocfs2_xattr_block_list(struct inode *inode,
      struct ocfs2_dinode *di,
      char *buffer,
      size_t buffer_size)
{
 struct buffer_head *blk_bh = ((void*)0);
 struct ocfs2_xattr_block *xb;
 int ret = 0;

 if (!di->i_xattr_loc)
  return ret;

 ret = ocfs2_read_xattr_block(inode, le64_to_cpu(di->i_xattr_loc),
         &blk_bh);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }

 xb = (struct ocfs2_xattr_block *)blk_bh->b_data;
 if (!(le16_to_cpu(xb->xb_flags) & OCFS2_XATTR_INDEXED)) {
  struct ocfs2_xattr_header *header = &xb->xb_attrs.xb_header;
  ret = ocfs2_xattr_list_entries(inode, header,
            buffer, buffer_size);
 } else
  ret = ocfs2_xattr_tree_list_index_block(inode, blk_bh,
         buffer, buffer_size);

 brelse(blk_bh);

 return ret;
}
