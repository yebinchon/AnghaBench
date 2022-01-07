
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_bucket {int bu_blocks; int * bu_bhs; int bu_inode; } ;
typedef int handle_t ;


 int INODE_CACHE (int ) ;
 int mlog_errno (int) ;
 int ocfs2_journal_access (int *,int ,int ,int) ;

__attribute__((used)) static int ocfs2_xattr_bucket_journal_access(handle_t *handle,
          struct ocfs2_xattr_bucket *bucket,
          int type)
{
 int i, rc = 0;

 for (i = 0; i < bucket->bu_blocks; i++) {
  rc = ocfs2_journal_access(handle,
       INODE_CACHE(bucket->bu_inode),
       bucket->bu_bhs[i], type);
  if (rc) {
   mlog_errno(rc);
   break;
  }
 }

 return rc;
}
