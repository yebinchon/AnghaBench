
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_xattr_bucket {TYPE_3__* bu_inode; int bu_blocks; int bu_bhs; } ;
struct TYPE_6__ {int i_sb; } ;
struct TYPE_5__ {int osb_xattr_lock; } ;
struct TYPE_4__ {int xh_check; } ;


 int INODE_CACHE (TYPE_3__*) ;
 TYPE_2__* OCFS2_SB (int ) ;
 TYPE_1__* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int mlog_errno (int) ;
 int ocfs2_read_blocks (int ,int ,int ,int ,int ,int *) ;
 int ocfs2_validate_meta_ecc_bhs (int ,int ,int ,int *) ;
 int ocfs2_xattr_bucket_relse (struct ocfs2_xattr_bucket*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_read_xattr_bucket(struct ocfs2_xattr_bucket *bucket,
       u64 xb_blkno)
{
 int rc;

 rc = ocfs2_read_blocks(INODE_CACHE(bucket->bu_inode), xb_blkno,
          bucket->bu_blocks, bucket->bu_bhs, 0,
          ((void*)0));
 if (!rc) {
  spin_lock(&OCFS2_SB(bucket->bu_inode->i_sb)->osb_xattr_lock);
  rc = ocfs2_validate_meta_ecc_bhs(bucket->bu_inode->i_sb,
       bucket->bu_bhs,
       bucket->bu_blocks,
       &bucket_xh(bucket)->xh_check);
  spin_unlock(&OCFS2_SB(bucket->bu_inode->i_sb)->osb_xattr_lock);
  if (rc)
   mlog_errno(rc);
 }

 if (rc)
  ocfs2_xattr_bucket_relse(bucket);
 return rc;
}
