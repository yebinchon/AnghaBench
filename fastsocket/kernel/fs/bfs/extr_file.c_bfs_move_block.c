
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int b_size; int b_data; } ;


 int EIO ;
 int bforget (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memcpy (int ,int ,int ) ;
 struct buffer_head* sb_bread (struct super_block*,unsigned long) ;
 struct buffer_head* sb_getblk (struct super_block*,unsigned long) ;

__attribute__((used)) static int bfs_move_block(unsigned long from, unsigned long to,
     struct super_block *sb)
{
 struct buffer_head *bh, *new;

 bh = sb_bread(sb, from);
 if (!bh)
  return -EIO;
 new = sb_getblk(sb, to);
 memcpy(new->b_data, bh->b_data, bh->b_size);
 mark_buffer_dirty(new);
 bforget(bh);
 brelse(new);
 return 0;
}
