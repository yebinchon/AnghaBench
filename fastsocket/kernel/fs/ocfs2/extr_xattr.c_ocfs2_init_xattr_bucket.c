
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_xattr_bucket {int bu_blocks; int * bu_bhs; TYPE_1__* bu_inode; } ;
struct TYPE_2__ {int i_sb; } ;


 int EIO ;
 int INODE_CACHE (TYPE_1__*) ;
 int mlog_errno (int) ;
 int ocfs2_buffer_uptodate (int ,int ) ;
 int ocfs2_set_new_buffer_uptodate (int ,int ) ;
 int ocfs2_xattr_bucket_relse (struct ocfs2_xattr_bucket*) ;
 int sb_getblk (int ,scalar_t__) ;

__attribute__((used)) static int ocfs2_init_xattr_bucket(struct ocfs2_xattr_bucket *bucket,
       u64 xb_blkno)
{
 int i, rc = 0;

 for (i = 0; i < bucket->bu_blocks; i++) {
  bucket->bu_bhs[i] = sb_getblk(bucket->bu_inode->i_sb,
           xb_blkno + i);
  if (!bucket->bu_bhs[i]) {
   rc = -EIO;
   mlog_errno(rc);
   break;
  }

  if (!ocfs2_buffer_uptodate(INODE_CACHE(bucket->bu_inode),
        bucket->bu_bhs[i]))
   ocfs2_set_new_buffer_uptodate(INODE_CACHE(bucket->bu_inode),
            bucket->bu_bhs[i]);
 }

 if (rc)
  ocfs2_xattr_bucket_relse(bucket);
 return rc;
}
