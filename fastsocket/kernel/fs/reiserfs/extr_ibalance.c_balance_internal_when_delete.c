
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_balance {int* insert_size; int* blknum; int* lnum; int* rnum; int tb_sb; struct buffer_head** R; struct buffer_head** L; int tb_path; } ;
struct buffer_info {int bi_parent; int bi_position; struct buffer_head* bi_bh; struct tree_balance* tb; } ;
struct buffer_head {int b_blocknr; } ;
struct TYPE_2__ {int s_sbh; } ;


 scalar_t__ B_FREE_SPACE (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 scalar_t__ DC_SIZE ;
 int INTERNAL_SHIFT_FROM_L_TO_S ;
 int INTERNAL_SHIFT_FROM_R_TO_S ;
 int INTERNAL_SHIFT_FROM_S_TO_L ;
 int INTERNAL_SHIFT_FROM_S_TO_R ;
 scalar_t__ KEY_SIZE ;
 scalar_t__ MAX_CHILD_SIZE (struct buffer_head*) ;
 struct buffer_head* PATH_H_PBUFFER (int ,int) ;
 int PATH_H_POSITION (int ,int) ;
 int PATH_H_PPARENT (int ,int) ;
 int PUT_SB_ROOT_BLOCK (int ,int ) ;
 int PUT_SB_TREE_HEIGHT (int ,scalar_t__) ;
 TYPE_1__* REISERFS_SB (int ) ;
 int RFALSE (int,char*,int,...) ;
 scalar_t__ SB_TREE_HEIGHT (int ) ;
 int check_internal (struct buffer_head*) ;
 int do_balance_mark_sb_dirty (struct tree_balance*,int ,int) ;
 int internal_delete_childs (struct buffer_info*,int,int) ;
 int internal_shift_left (int ,struct tree_balance*,int,int) ;
 int internal_shift_right (int ,struct tree_balance*,int,int) ;
 int reiserfs_invalidate_buffer (struct tree_balance*,struct buffer_head*) ;
 int reiserfs_panic (int ,char*,char*,int,int,int,int) ;

__attribute__((used)) static void balance_internal_when_delete(struct tree_balance *tb,
      int h, int child_pos)
{
 int insert_num;
 int n;
 struct buffer_head *tbSh = PATH_H_PBUFFER(tb->tb_path, h);
 struct buffer_info bi;

 insert_num = tb->insert_size[h] / ((int)(DC_SIZE + KEY_SIZE));


 bi.tb = tb;
 bi.bi_bh = tbSh;
 bi.bi_parent = PATH_H_PPARENT(tb->tb_path, h);
 bi.bi_position = PATH_H_POSITION(tb->tb_path, h + 1);

 internal_delete_childs(&bi, child_pos, -insert_num);

 RFALSE(tb->blknum[h] > 1,
        "tb->blknum[%d]=%d when insert_size < 0", h, tb->blknum[h]);

 n = B_NR_ITEMS(tbSh);

 if (tb->lnum[h] == 0 && tb->rnum[h] == 0) {
  if (tb->blknum[h] == 0) {

   struct buffer_head *new_root;

   RFALSE(n
          || B_FREE_SPACE(tbSh) !=
          MAX_CHILD_SIZE(tbSh) - DC_SIZE,
          "buffer must have only 0 keys (%d)", n);
   RFALSE(bi.bi_parent, "root has parent (%p)",
          bi.bi_parent);


   if (!tb->L[h - 1] || !B_NR_ITEMS(tb->L[h - 1]))
    new_root = tb->R[h - 1];
   else
    new_root = tb->L[h - 1];

   PUT_SB_ROOT_BLOCK(tb->tb_sb, new_root->b_blocknr);

   PUT_SB_TREE_HEIGHT(tb->tb_sb,
        SB_TREE_HEIGHT(tb->tb_sb) - 1);

   do_balance_mark_sb_dirty(tb,
       REISERFS_SB(tb->tb_sb)->s_sbh,
       1);

   if (h > 1)

    check_internal(new_root);



   reiserfs_invalidate_buffer(tb, tbSh);
   return;
  }
  return;
 }

 if (tb->L[h] && tb->lnum[h] == -B_NR_ITEMS(tb->L[h]) - 1) {

  RFALSE(tb->rnum[h] != 0,
         "invalid tb->rnum[%d]==%d when joining S[h] with L[h]",
         h, tb->rnum[h]);

  internal_shift_left(INTERNAL_SHIFT_FROM_S_TO_L, tb, h, n + 1);
  reiserfs_invalidate_buffer(tb, tbSh);

  return;
 }

 if (tb->R[h] && tb->rnum[h] == -B_NR_ITEMS(tb->R[h]) - 1) {
  RFALSE(tb->lnum[h] != 0,
         "invalid tb->lnum[%d]==%d when joining S[h] with R[h]",
         h, tb->lnum[h]);

  internal_shift_right(INTERNAL_SHIFT_FROM_S_TO_R, tb, h, n + 1);

  reiserfs_invalidate_buffer(tb, tbSh);
  return;
 }

 if (tb->lnum[h] < 0) {
  RFALSE(tb->rnum[h] != 0,
         "wrong tb->rnum[%d]==%d when borrow from L[h]", h,
         tb->rnum[h]);

  internal_shift_right(INTERNAL_SHIFT_FROM_L_TO_S, tb, h,
         -tb->lnum[h]);
  return;
 }

 if (tb->rnum[h] < 0) {
  RFALSE(tb->lnum[h] != 0,
         "invalid tb->lnum[%d]==%d when borrow from R[h]",
         h, tb->lnum[h]);
  internal_shift_left(INTERNAL_SHIFT_FROM_R_TO_S, tb, h, -tb->rnum[h]);
  return;
 }

 if (tb->lnum[h] > 0) {
  RFALSE(tb->rnum[h] == 0 || tb->lnum[h] + tb->rnum[h] != n + 1,
         "invalid tb->lnum[%d]==%d or tb->rnum[%d]==%d when S[h](item number == %d) is split between them",
         h, tb->lnum[h], h, tb->rnum[h], n);

  internal_shift_left(INTERNAL_SHIFT_FROM_S_TO_L, tb, h, tb->lnum[h]);
  internal_shift_right(INTERNAL_SHIFT_FROM_S_TO_R, tb, h,
         tb->rnum[h]);

  reiserfs_invalidate_buffer(tb, tbSh);

  return;
 }
 reiserfs_panic(tb->tb_sb, "ibalance-2",
         "unexpected tb->lnum[%d]==%d or tb->rnum[%d]==%d",
         h, tb->lnum[h], h, tb->rnum[h]);
}
