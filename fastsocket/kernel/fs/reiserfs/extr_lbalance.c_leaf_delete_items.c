
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;
struct buffer_info {int tb; struct buffer_head* bi_bh; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 struct item_head* B_N_PITEM_HEAD (struct buffer_head*,int) ;
 int FIRST_TO_LAST ;
 int RFALSE (int,char*,...) ;
 int do_balance_mark_leaf_dirty (int ,struct buffer_head*,int ) ;
 int ih_entry_count (struct item_head*) ;
 int ih_item_len (struct item_head*) ;
 scalar_t__ is_direntry_le_ih (struct item_head*) ;
 int leaf_cut_from_buffer (struct buffer_info*,int,int,int) ;
 int leaf_delete_items_entirely (struct buffer_info*,int,int) ;
 int make_empty_node (struct buffer_info*) ;

void leaf_delete_items(struct buffer_info *cur_bi, int last_first,
         int first, int del_num, int del_bytes)
{
 struct buffer_head *bh;
 int item_amount = B_NR_ITEMS(bh = cur_bi->bi_bh);

 RFALSE(!bh, "10155: bh is not defined");
 RFALSE(del_num < 0, "10160: del_num can not be < 0. del_num==%d",
        del_num);
 RFALSE(first < 0
        || first + del_num > item_amount,
        "10165: invalid number of first item to be deleted (%d) or "
        "no so much items (%d) to delete (only %d)", first,
        first + del_num, item_amount);

 if (del_num == 0)
  return;

 if (first == 0 && del_num == item_amount && del_bytes == -1) {
  make_empty_node(cur_bi);
  do_balance_mark_leaf_dirty(cur_bi->tb, bh, 0);
  return;
 }

 if (del_bytes == -1)

  leaf_delete_items_entirely(cur_bi, first, del_num);
 else {
  if (last_first == FIRST_TO_LAST) {

   leaf_delete_items_entirely(cur_bi, first, del_num - 1);




   leaf_cut_from_buffer(cur_bi, 0, 0, del_bytes);
  } else {
   struct item_head *ih;
   int len;


   leaf_delete_items_entirely(cur_bi, first + 1,
         del_num - 1);

   ih = B_N_PITEM_HEAD(bh, B_NR_ITEMS(bh) - 1);
   if (is_direntry_le_ih(ih))


    len = ih_entry_count(ih);
   else

    len = ih_item_len(ih);




   leaf_cut_from_buffer(cur_bi, B_NR_ITEMS(bh) - 1,
          len - del_bytes, del_bytes);
  }
 }
}
