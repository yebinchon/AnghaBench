
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_xattr_search {int not_found; struct buffer_head* xattr_bh; TYPE_3__* header; int here; void* end; void* base; TYPE_1__* inode_bh; } ;
struct TYPE_6__ {int xh_entries; } ;
struct TYPE_5__ {TYPE_3__ xb_header; } ;
struct ocfs2_xattr_block {TYPE_2__ xb_attrs; int xb_flags; } ;
struct ocfs2_dinode {int i_xattr_loc; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;


 int ENODATA ;
 int OCFS2_XATTR_INDEXED ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_read_xattr_block (struct inode*,int ,struct buffer_head**) ;
 int ocfs2_xattr_find_entry (int,char const*,struct ocfs2_xattr_search*) ;
 int ocfs2_xattr_index_block_find (struct inode*,struct buffer_head*,int,char const*,struct ocfs2_xattr_search*) ;

__attribute__((used)) static int ocfs2_xattr_block_find(struct inode *inode,
      int name_index,
      const char *name,
      struct ocfs2_xattr_search *xs)
{
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)xs->inode_bh->b_data;
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

 xs->xattr_bh = blk_bh;
 xb = (struct ocfs2_xattr_block *)blk_bh->b_data;

 if (!(le16_to_cpu(xb->xb_flags) & OCFS2_XATTR_INDEXED)) {
  xs->header = &xb->xb_attrs.xb_header;
  xs->base = (void *)xs->header;
  xs->end = (void *)(blk_bh->b_data) + blk_bh->b_size;
  xs->here = xs->header->xh_entries;

  ret = ocfs2_xattr_find_entry(name_index, name, xs);
 } else
  ret = ocfs2_xattr_index_block_find(inode, blk_bh,
         name_index,
         name, xs);

 if (ret && ret != -ENODATA) {
  xs->xattr_bh = ((void*)0);
  goto cleanup;
 }
 xs->not_found = ret;
 return 0;
cleanup:
 brelse(blk_bh);

 return ret;
}
