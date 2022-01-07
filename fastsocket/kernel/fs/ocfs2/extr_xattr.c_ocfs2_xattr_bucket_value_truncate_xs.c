
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_set_ctxt {int dummy; } ;
struct ocfs2_xattr_search {TYPE_1__* bucket; scalar_t__ base; struct ocfs2_xattr_entry* here; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int * bu_bhs; } ;


 int BUG_ON (int) ;
 int mlog_errno (int) ;
 int ocfs2_xattr_bucket_value_truncate (struct inode*,TYPE_1__*,int,int,struct ocfs2_xattr_set_ctxt*) ;
 scalar_t__ ocfs2_xattr_is_local (struct ocfs2_xattr_entry*) ;

__attribute__((used)) static int ocfs2_xattr_bucket_value_truncate_xs(struct inode *inode,
     struct ocfs2_xattr_search *xs,
     int len,
     struct ocfs2_xattr_set_ctxt *ctxt)
{
 int ret, offset;
 struct ocfs2_xattr_entry *xe = xs->here;
 struct ocfs2_xattr_header *xh = (struct ocfs2_xattr_header *)xs->base;

 BUG_ON(!xs->bucket->bu_bhs[0] || !xe || ocfs2_xattr_is_local(xe));

 offset = xe - xh->xh_entries;
 ret = ocfs2_xattr_bucket_value_truncate(inode, xs->bucket,
      offset, len, ctxt);
 if (ret)
  mlog_errno(ret);

 return ret;
}
