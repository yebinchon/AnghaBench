
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ l_next_free_rec; int l_count; scalar_t__ l_tree_depth; } ;
struct ocfs2_xattr_value_root {TYPE_1__ xr_list; scalar_t__ xr_last_eb_blk; scalar_t__ xr_clusters; } ;
struct ocfs2_xattr_value_buf {struct ocfs2_xattr_value_root* vb_xv; } ;
struct ocfs2_xattr_set_ctxt {int handle; } ;
struct ocfs2_xattr_search {void* base; } ;
struct ocfs2_xattr_info {int value_len; int value; int name; } ;
struct inode {int dummy; } ;


 size_t OCFS2_XATTR_ROOT_SIZE ;
 size_t OCFS2_XATTR_SIZE (size_t) ;
 int __ocfs2_xattr_set_value_outside (struct inode*,int ,struct ocfs2_xattr_value_buf*,int ,int ) ;
 int cpu_to_le16 (int) ;
 int memcpy (void*,int ,size_t) ;
 int memset (void*,int ,size_t) ;
 int mlog_errno (int) ;
 int ocfs2_xattr_update_entry (struct inode*,int ,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_value_buf*,size_t) ;
 int ocfs2_xattr_value_truncate (struct inode*,struct ocfs2_xattr_value_buf*,int ,struct ocfs2_xattr_set_ctxt*) ;
 size_t strlen (int ) ;

__attribute__((used)) static int ocfs2_xattr_set_value_outside(struct inode *inode,
      struct ocfs2_xattr_info *xi,
      struct ocfs2_xattr_search *xs,
      struct ocfs2_xattr_set_ctxt *ctxt,
      struct ocfs2_xattr_value_buf *vb,
      size_t offs)
{
 size_t name_len = strlen(xi->name);
 void *val = xs->base + offs;
 struct ocfs2_xattr_value_root *xv = ((void*)0);
 size_t size = OCFS2_XATTR_SIZE(name_len) + OCFS2_XATTR_ROOT_SIZE;
 int ret = 0;

 memset(val, 0, size);
 memcpy(val, xi->name, name_len);
 xv = (struct ocfs2_xattr_value_root *)
  (val + OCFS2_XATTR_SIZE(name_len));
 xv->xr_clusters = 0;
 xv->xr_last_eb_blk = 0;
 xv->xr_list.l_tree_depth = 0;
 xv->xr_list.l_count = cpu_to_le16(1);
 xv->xr_list.l_next_free_rec = 0;
 vb->vb_xv = xv;

 ret = ocfs2_xattr_value_truncate(inode, vb, xi->value_len, ctxt);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }
 ret = ocfs2_xattr_update_entry(inode, ctxt->handle, xi, xs, vb, offs);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }
 ret = __ocfs2_xattr_set_value_outside(inode, ctxt->handle, vb,
           xi->value, xi->value_len);
 if (ret < 0)
  mlog_errno(ret);

 return ret;
}
