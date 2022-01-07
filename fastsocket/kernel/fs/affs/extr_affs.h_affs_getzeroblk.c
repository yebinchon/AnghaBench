
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct buffer_head {int b_data; } ;
struct TYPE_2__ {int s_reserved; int s_partition_size; } ;


 TYPE_1__* AFFS_SB (struct super_block*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 int pr_debug (char*,int) ;
 struct buffer_head* sb_getblk (struct super_block*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static inline struct buffer_head *
affs_getzeroblk(struct super_block *sb, int block)
{
 struct buffer_head *bh;
 pr_debug("affs_getzeroblk: %d\n", block);
 if (block >= AFFS_SB(sb)->s_reserved && block < AFFS_SB(sb)->s_partition_size) {
  bh = sb_getblk(sb, block);
  lock_buffer(bh);
  memset(bh->b_data, 0 , sb->s_blocksize);
  set_buffer_uptodate(bh);
  unlock_buffer(bh);
  return bh;
 }
 return ((void*)0);
}
