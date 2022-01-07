
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_value_buf {int vb_bh; struct ocfs2_xattr_value_root* vb_xv; int vb_access; } ;
struct ocfs2_xattr_search {TYPE_1__* bucket; int base; struct ocfs2_xattr_entry* here; } ;
struct ocfs2_xattr_header {int xh_entries; } ;
struct ocfs2_xattr_entry {int xe_name_len; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;
struct TYPE_3__ {int * bu_bhs; } ;


 int BUG_ON (int) ;
 int OCFS2_XATTR_SIZE (int ) ;
 int __ocfs2_xattr_set_value_outside (struct inode*,int *,struct ocfs2_xattr_value_buf*,char*,int) ;
 void* bucket_block (TYPE_1__*,int) ;
 struct ocfs2_xattr_header* bucket_xh (TYPE_1__*) ;
 int mlog_errno (int) ;
 int ocfs2_journal_access ;
 int ocfs2_xattr_bucket_get_name_value (int ,struct ocfs2_xattr_header*,struct ocfs2_xattr_entry*,int*,int*) ;
 scalar_t__ ocfs2_xattr_is_local (struct ocfs2_xattr_entry*) ;

__attribute__((used)) static int ocfs2_xattr_bucket_set_value_outside(struct inode *inode,
      handle_t *handle,
      struct ocfs2_xattr_search *xs,
      char *val,
      int value_len)
{
 int ret, offset, block_off;
 struct ocfs2_xattr_value_root *xv;
 struct ocfs2_xattr_entry *xe = xs->here;
 struct ocfs2_xattr_header *xh = bucket_xh(xs->bucket);
 void *base;
 struct ocfs2_xattr_value_buf vb = {
  .vb_access = ocfs2_journal_access,
 };

 BUG_ON(!xs->base || !xe || ocfs2_xattr_is_local(xe));

 ret = ocfs2_xattr_bucket_get_name_value(inode->i_sb, xh,
      xe - xh->xh_entries,
      &block_off,
      &offset);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 base = bucket_block(xs->bucket, block_off);
 xv = (struct ocfs2_xattr_value_root *)(base + offset +
   OCFS2_XATTR_SIZE(xe->xe_name_len));

 vb.vb_xv = xv;
 vb.vb_bh = xs->bucket->bu_bhs[block_off];
 ret = __ocfs2_xattr_set_value_outside(inode, handle,
           &vb, val, value_len);
 if (ret)
  mlog_errno(ret);
out:
 return ret;
}
