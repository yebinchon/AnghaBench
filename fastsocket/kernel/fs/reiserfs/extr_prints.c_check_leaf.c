
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;


 int B_I_PITEM (struct buffer_head*,struct item_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 struct item_head* B_N_PITEM_HEAD (struct buffer_head*,int ) ;
 int check_leaf_block_head (struct buffer_head*) ;
 int op_check_item (struct item_head*,int ) ;

void check_leaf(struct buffer_head *bh)
{
 int i;
 struct item_head *ih;

 if (!bh)
  return;
 check_leaf_block_head(bh);
 for (i = 0, ih = B_N_PITEM_HEAD(bh, 0); i < B_NR_ITEMS(bh); i++, ih++)
  op_check_item(ih, B_I_PITEM(bh, ih));
}
