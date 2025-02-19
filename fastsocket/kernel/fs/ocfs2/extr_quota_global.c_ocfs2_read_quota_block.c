
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;
struct TYPE_3__ {scalar_t__ s_blocksize_bits; } ;


 int EIO ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int i_size_read (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_error (TYPE_1__*,char*,unsigned long long,unsigned long long,unsigned long long) ;
 int ocfs2_read_virt_blocks (struct inode*,scalar_t__,int,struct buffer_head**,int ,int ) ;
 int ocfs2_validate_quota_block ;

int ocfs2_read_quota_block(struct inode *inode, u64 v_block,
      struct buffer_head **bh)
{
 int rc = 0;
 struct buffer_head *tmp = *bh;

 if (i_size_read(inode) >> inode->i_sb->s_blocksize_bits <= v_block) {
  ocfs2_error(inode->i_sb,
       "Quota file %llu is probably corrupted! Requested "
       "to read block %Lu but file has size only %Lu\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno,
       (unsigned long long)v_block,
       (unsigned long long)i_size_read(inode));
  return -EIO;
 }
 rc = ocfs2_read_virt_blocks(inode, v_block, 1, &tmp, 0,
        ocfs2_validate_quota_block);
 if (rc)
  mlog_errno(rc);


 if (!rc && !*bh)
  *bh = tmp;

 return rc;
}
