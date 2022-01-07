
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_alloc_sem; } ;


 int EIO ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int down_read (int *) ;
 int mlog_errno (int) ;
 int ocfs2_extent_map_get_blocks (struct inode*,int,int *,int *,int *) ;
 struct buffer_head* sb_getblk (int ,int ) ;
 int up_read (int *) ;

__attribute__((used)) static int ocfs2_get_quota_block(struct inode *inode, int block,
     struct buffer_head **bh)
{
 u64 pblock, pcount;
 int err;

 down_read(&OCFS2_I(inode)->ip_alloc_sem);
 err = ocfs2_extent_map_get_blocks(inode, block, &pblock, &pcount, ((void*)0));
 up_read(&OCFS2_I(inode)->ip_alloc_sem);
 if (err) {
  mlog_errno(err);
  return err;
 }
 *bh = sb_getblk(inode->i_sb, pblock);
 if (!*bh) {
  err = -EIO;
  mlog_errno(err);
 }
 return err;
}
