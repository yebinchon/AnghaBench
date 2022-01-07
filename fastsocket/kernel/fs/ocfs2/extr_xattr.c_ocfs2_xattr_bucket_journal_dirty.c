
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_xattr_bucket {int bu_blocks; int * bu_bhs; TYPE_1__* bu_inode; } ;
typedef int handle_t ;
struct TYPE_6__ {int osb_xattr_lock; } ;
struct TYPE_5__ {int xh_check; } ;
struct TYPE_4__ {int i_sb; } ;


 TYPE_3__* OCFS2_SB (int ) ;
 TYPE_2__* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int ocfs2_compute_meta_ecc_bhs (int ,int *,int,int *) ;
 int ocfs2_journal_dirty (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_xattr_bucket_journal_dirty(handle_t *handle,
          struct ocfs2_xattr_bucket *bucket)
{
 int i;

 spin_lock(&OCFS2_SB(bucket->bu_inode->i_sb)->osb_xattr_lock);
 ocfs2_compute_meta_ecc_bhs(bucket->bu_inode->i_sb,
       bucket->bu_bhs, bucket->bu_blocks,
       &bucket_xh(bucket)->xh_check);
 spin_unlock(&OCFS2_SB(bucket->bu_inode->i_sb)->osb_xattr_lock);

 for (i = 0; i < bucket->bu_blocks; i++)
  ocfs2_journal_dirty(handle, bucket->bu_bhs[i]);
}
