
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_value_buf {int (* vb_access ) (int *,int ,int ,int ) ;int vb_bh; } ;
struct ocfs2_xattr_search {scalar_t__ here; TYPE_1__* header; void* base; } ;
struct ocfs2_xattr_info {int name; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct inode {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int xh_count; } ;


 int INODE_CACHE (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 size_t OCFS2_XATTR_ROOT_SIZE ;
 size_t OCFS2_XATTR_SIZE (size_t) ;
 int le16_add_cpu (int *,int) ;
 int memset (void*,int ,size_t) ;
 int mlog_errno (int) ;
 int ocfs2_journal_dirty (int *,int ) ;
 size_t strlen (int ) ;
 int stub1 (int *,int ,int ,int ) ;

__attribute__((used)) static int ocfs2_xattr_cleanup(struct inode *inode,
          handle_t *handle,
          struct ocfs2_xattr_info *xi,
          struct ocfs2_xattr_search *xs,
          struct ocfs2_xattr_value_buf *vb,
          size_t offs)
{
 int ret = 0;
 size_t name_len = strlen(xi->name);
 void *val = xs->base + offs;
 size_t size = OCFS2_XATTR_SIZE(name_len) + OCFS2_XATTR_ROOT_SIZE;

 ret = vb->vb_access(handle, INODE_CACHE(inode), vb->vb_bh,
       OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 le16_add_cpu(&xs->header->xh_count, -1);

 memset((void *)xs->here, 0, sizeof(struct ocfs2_xattr_entry));
 memset(val, 0, size);

 ret = ocfs2_journal_dirty(handle, vb->vb_bh);
 if (ret < 0)
  mlog_errno(ret);
out:
 return ret;
}
