
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_xattr_set_ctxt {int handle; } ;
struct ocfs2_xattr_search {scalar_t__ not_found; struct ocfs2_xattr_entry* here; } ;
struct ocfs2_xattr_info {size_t value_len; int * value; int name; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct inode {int dummy; } ;


 size_t OCFS2_XATTR_INLINE_SIZE ;
 size_t OCFS2_XATTR_ROOT_SIZE ;
 int def_xv ;
 int mlog_errno (int) ;
 int ocfs2_xattr_bucket_remove_xs (struct inode*,int ,struct ocfs2_xattr_search*) ;
 int ocfs2_xattr_bucket_set_value_outside (struct inode*,int ,struct ocfs2_xattr_search*,char*,size_t) ;
 int ocfs2_xattr_bucket_value_truncate_xs (struct inode*,struct ocfs2_xattr_search*,size_t,struct ocfs2_xattr_set_ctxt*) ;
 int ocfs2_xattr_is_local (struct ocfs2_xattr_entry*) ;
 int ocfs2_xattr_name_hash (struct inode*,int ,int ) ;
 int ocfs2_xattr_set_entry_in_bucket (struct inode*,int ,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static int ocfs2_xattr_set_in_bucket(struct inode *inode,
         struct ocfs2_xattr_info *xi,
         struct ocfs2_xattr_search *xs,
         struct ocfs2_xattr_set_ctxt *ctxt)
{
 int ret, local = 1;
 size_t value_len;
 char *val = (char *)xi->value;
 struct ocfs2_xattr_entry *xe = xs->here;
 u32 name_hash = ocfs2_xattr_name_hash(inode, xi->name,
           strlen(xi->name));

 if (!xs->not_found && !ocfs2_xattr_is_local(xe)) {
  if (xi->value_len > OCFS2_XATTR_INLINE_SIZE)
   value_len = xi->value_len;
  else
   value_len = 0;

  ret = ocfs2_xattr_bucket_value_truncate_xs(inode, xs,
          value_len,
          ctxt);
  if (ret)
   goto out;

  if (value_len)
   goto set_value_outside;
 }

 value_len = xi->value_len;

 if (value_len > OCFS2_XATTR_INLINE_SIZE) {




  local = 0;
  xi->value = &def_xv;
  xi->value_len = OCFS2_XATTR_ROOT_SIZE;
 }

 ret = ocfs2_xattr_set_entry_in_bucket(inode, ctxt->handle, xi, xs,
           name_hash, local);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (value_len <= OCFS2_XATTR_INLINE_SIZE)
  goto out;


 ret = ocfs2_xattr_bucket_value_truncate_xs(inode, xs,
         value_len, ctxt);
 if (ret) {
  mlog_errno(ret);

  if (xs->not_found) {





   ocfs2_xattr_bucket_remove_xs(inode, ctxt->handle, xs);
  }
  goto out;
 }

set_value_outside:
 ret = ocfs2_xattr_bucket_set_value_outside(inode, ctxt->handle,
         xs, val, value_len);
out:
 return ret;
}
