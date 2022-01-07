
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef int sector_t ;
typedef int __u64 ;


 int EEXIST ;
 int EIO ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int nilfs_btnode_submit_block (struct address_space*,int ,int ,struct buffer_head**,int) ;
 scalar_t__ unlikely (int) ;
 int wait_on_buffer (struct buffer_head*) ;

int nilfs_btnode_get(struct address_space *btnc, __u64 blocknr,
       sector_t pblocknr, struct buffer_head **pbh, int newblk)
{
 struct buffer_head *bh;
 int err;

 err = nilfs_btnode_submit_block(btnc, blocknr, pblocknr, pbh, newblk);
 if (err == -EEXIST)
  return 0;
 if (unlikely(err))
  return err;

 bh = *pbh;
 wait_on_buffer(bh);
 if (!buffer_uptodate(bh)) {
  brelse(bh);
  return -EIO;
 }
 return 0;
}
