
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int dummy; } ;
struct buffer_info {int bi_bh; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (int ) ;
 int FIRST_TO_LAST ;
 int leaf_copy_items (struct buffer_info*,int ,int,int,int) ;
 int leaf_define_dest_src_infos (int,struct tree_balance*,struct buffer_info*,struct buffer_info*,int*,struct buffer_head*) ;
 int leaf_delete_items (struct buffer_info*,int,int,int,int) ;

int leaf_move_items(int shift_mode, struct tree_balance *tb, int mov_num,
      int mov_bytes, struct buffer_head *Snew)
{
 int ret_value;
 struct buffer_info dest_bi, src_bi;
 int first_last;

 leaf_define_dest_src_infos(shift_mode, tb, &dest_bi, &src_bi,
       &first_last, Snew);

 ret_value =
     leaf_copy_items(&dest_bi, src_bi.bi_bh, first_last, mov_num,
       mov_bytes);

 leaf_delete_items(&src_bi, first_last,
     (first_last ==
      FIRST_TO_LAST) ? 0 : (B_NR_ITEMS(src_bi.bi_bh) -
       mov_num), mov_num, mov_bytes);

 return ret_value;
}
