
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int dummy; } ;
struct buffer_head {int dummy; } ;
struct block_head {int dummy; } ;


 struct block_head* B_BLK_HEAD (struct buffer_head*) ;
 int FREE_LEVEL ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int set_blkh_level (struct block_head*,int ) ;
 int set_blkh_nr_item (struct block_head*,int ) ;
 int store_thrown (struct tree_balance*,struct buffer_head*) ;

void reiserfs_invalidate_buffer(struct tree_balance *tb, struct buffer_head *bh)
{
 struct block_head *blkh;
 blkh = B_BLK_HEAD(bh);
 set_blkh_level(blkh, FREE_LEVEL);
 set_blkh_nr_item(blkh, 0);

 clear_buffer_dirty(bh);
 store_thrown(tb, bh);
}
