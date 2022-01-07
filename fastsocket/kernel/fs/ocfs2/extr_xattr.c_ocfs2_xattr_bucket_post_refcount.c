
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int dummy; } ;
typedef int handle_t ;


 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int mlog_errno (int) ;
 int ocfs2_xattr_bucket_journal_access (int *,struct ocfs2_xattr_bucket*,int ) ;
 int ocfs2_xattr_bucket_journal_dirty (int *,struct ocfs2_xattr_bucket*) ;

__attribute__((used)) static int ocfs2_xattr_bucket_post_refcount(struct inode *inode,
         handle_t *handle,
         void *para)
{
 int ret;
 struct ocfs2_xattr_bucket *bucket =
   (struct ocfs2_xattr_bucket *)para;

 ret = ocfs2_xattr_bucket_journal_access(handle, bucket,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 ocfs2_xattr_bucket_journal_dirty(handle, bucket);

 return 0;
}
