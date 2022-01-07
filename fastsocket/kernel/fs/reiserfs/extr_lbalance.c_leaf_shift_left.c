
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {scalar_t__ tb_mode; int * lkey; int * CFL; int tb_path; int tb_sb; } ;
struct buffer_head {int b_size; } ;


 scalar_t__ B_NR_ITEMS (struct buffer_head*) ;
 int B_N_PITEM_HEAD (struct buffer_head*,int ) ;
 int B_N_PKEY (struct buffer_head*,int ) ;
 int I_ENTRY_COUNT (int ) ;
 int LEAF_FROM_S_TO_L ;
 scalar_t__ M_INSERT ;
 scalar_t__ M_PASTE ;
 scalar_t__ PATH_H_POSITION (int ,int) ;
 struct buffer_head* PATH_H_PPARENT (int ,int ) ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int RFALSE (int,char*,...) ;
 scalar_t__ is_direntry_le_ih (int ) ;
 int leaf_move_items (int ,struct tree_balance*,int,int,int *) ;
 int op_is_left_mergeable (int ,int ) ;
 int print_cur_tb (char*) ;
 int reiserfs_panic (int ,char*,char*,scalar_t__) ;
 int replace_key (struct tree_balance*,int ,int ,struct buffer_head*,int ) ;

int leaf_shift_left(struct tree_balance *tb, int shift_num, int shift_bytes)
{
 struct buffer_head *S0 = PATH_PLAST_BUFFER(tb->tb_path);
 int i;


 i = leaf_move_items(LEAF_FROM_S_TO_L, tb, shift_num, shift_bytes, ((void*)0));

 if (shift_num) {
  if (B_NR_ITEMS(S0) == 0) {

   RFALSE(shift_bytes != -1,
          "vs-10270: S0 is empty now, but shift_bytes != -1 (%d)",
          shift_bytes);
   if (PATH_H_POSITION(tb->tb_path, 1) == 0)
    replace_key(tb, tb->CFL[0], tb->lkey[0],
         PATH_H_PPARENT(tb->tb_path, 0), 0);

  } else {

   replace_key(tb, tb->CFL[0], tb->lkey[0], S0, 0);

   RFALSE((shift_bytes != -1 &&
    !(is_direntry_le_ih(B_N_PITEM_HEAD(S0, 0))
      && !I_ENTRY_COUNT(B_N_PITEM_HEAD(S0, 0)))) &&
          (!op_is_left_mergeable
    (B_N_PKEY(S0, 0), S0->b_size)),
          "vs-10280: item must be mergeable");
  }
 }

 return i;
}
