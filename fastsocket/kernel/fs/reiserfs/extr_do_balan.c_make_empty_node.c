
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_info {int bi_position; scalar_t__ bi_parent; int * bi_bh; } ;
struct block_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ dc_size; } ;


 struct block_head* B_BLK_HEAD (int *) ;
 TYPE_1__* B_N_CHILD (scalar_t__,int ) ;
 int MAX_CHILD_SIZE (int *) ;
 int RFALSE (int ,char*) ;
 int set_blkh_free_space (struct block_head*,int ) ;
 int set_blkh_nr_item (struct block_head*,int ) ;

void make_empty_node(struct buffer_info *bi)
{
 struct block_head *blkh;

 RFALSE(bi->bi_bh == ((void*)0), "PAP-12295: pointer to the buffer is NULL");

 blkh = B_BLK_HEAD(bi->bi_bh);
 set_blkh_nr_item(blkh, 0);
 set_blkh_free_space(blkh, MAX_CHILD_SIZE(bi->bi_bh));

 if (bi->bi_parent)
  B_N_CHILD(bi->bi_parent, bi->bi_position)->dc_size = 0;
}
