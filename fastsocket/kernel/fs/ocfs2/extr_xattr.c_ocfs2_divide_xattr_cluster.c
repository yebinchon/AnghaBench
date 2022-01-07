
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct inode {int i_sb; } ;
struct TYPE_6__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;
struct TYPE_7__ {scalar_t__ s_clustersize; } ;


 int BUG_ON (int) ;
 TYPE_5__* OCFS2_SB (int ) ;
 scalar_t__ OCFS2_XATTR_BUCKET_SIZE ;
 int mlog_errno (int) ;
 int ocfs2_blocks_per_xattr_bucket (int ) ;
 int ocfs2_divide_xattr_bucket (struct inode*,TYPE_1__*,int ,int ,int *,int) ;
 int ocfs2_extend_trans (TYPE_1__*,int) ;

__attribute__((used)) static int ocfs2_divide_xattr_cluster(struct inode *inode,
          handle_t *handle,
          u64 prev_blk,
          u64 new_blk,
          u32 *first_hash)
{
 u16 blk_per_bucket = ocfs2_blocks_per_xattr_bucket(inode->i_sb);
 int ret, credits = 2 * blk_per_bucket + handle->h_buffer_credits;

 BUG_ON(OCFS2_XATTR_BUCKET_SIZE < OCFS2_SB(inode->i_sb)->s_clustersize);

 ret = ocfs2_extend_trans(handle, credits);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }


 return ocfs2_divide_xattr_bucket(inode, handle, prev_blk,
       new_blk, first_hash, 1);
}
