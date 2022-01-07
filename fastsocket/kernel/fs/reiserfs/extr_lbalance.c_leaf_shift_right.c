
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int * R; int * rkey; int * CFR; } ;


 int LEAF_FROM_S_TO_R ;
 int leaf_move_items (int ,struct tree_balance*,int,int,int *) ;
 int replace_key (struct tree_balance*,int ,int ,int ,int ) ;

int leaf_shift_right(struct tree_balance *tb, int shift_num, int shift_bytes)
{

 int ret_value;


 ret_value =
     leaf_move_items(LEAF_FROM_S_TO_R, tb, shift_num, shift_bytes, ((void*)0));


 if (shift_num) {
  replace_key(tb, tb->CFR[0], tb->rkey[0], tb->R[0], 0);

 }

 return ret_value;
}
