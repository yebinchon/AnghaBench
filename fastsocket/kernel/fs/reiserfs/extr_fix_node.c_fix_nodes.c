
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tree_balance {int* insert_size; int* blknum; int ** FEB; int tb_sb; int ** CFR; int ** CFL; int ** FR; int ** FL; int ** R; int ** L; TYPE_1__* tb_path; int transaction_handle; int fs_gen; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_8__ {int s_fix_nodes; } ;
struct TYPE_7__ {int pos_in_item; } ;


 int B_IS_IN_TREE (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 int CARRY_ON ;
 int DC_SIZE ;
 scalar_t__ FILESYSTEM_CHANGED_TB (struct tree_balance*) ;
 int KEY_SIZE ;
 int MAX_FEB_SIZE ;
 int MAX_HEIGHT ;




 int NO_BALANCING_NEEDED ;
 int PATH_H_PBUFFER (TYPE_1__*,int) ;
 int PATH_LAST_POSITION (TYPE_1__*) ;
 struct buffer_head* PATH_PLAST_BUFFER (TYPE_1__*) ;
 TYPE_3__* REISERFS_SB (int ) ;
 int REPEAT_SEARCH ;
 int RFALSE (int,char*) ;
 int SB_BUFFER_WITH_SB (int ) ;
 int __wait_on_buffer (struct buffer_head*) ;
 int brelse (int *) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int check_balance (int,struct tree_balance*,int,int,int,struct item_head*,void const*) ;
 scalar_t__ cur_tb ;
 int get_direct_parent (struct tree_balance*,int) ;
 int get_empty_nodes (struct tree_balance*,int) ;
 int get_generation (int ) ;
 int get_mem_for_virtual_node (struct tree_balance*) ;
 int get_neighbors (struct tree_balance*,int) ;
 int journal_mark_dirty (int ,int ,int ) ;
 int pathrelse (TYPE_1__*) ;
 int pathrelse_and_restore (int ,TYPE_1__*) ;
 int print_block (struct buffer_head*,int ,int,int) ;
 int print_cur_tb (char*) ;
 int reiserfs_panic (int ,char*,char*,...) ;
 int reiserfs_prepare_for_journal (int ,int ,int) ;
 int reiserfs_restore_prepared_buffer (int ,int *) ;
 int wait_tb_buffers_until_unlocked (struct tree_balance*) ;

int fix_nodes(int op_mode, struct tree_balance *tb,
       struct item_head *ins_ih, const void *data)
{
 int ret, h, item_num = PATH_LAST_POSITION(tb->tb_path);
 int pos_in_item;




 int wait_tb_buffers_run = 0;
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);

 ++REISERFS_SB(tb->tb_sb)->s_fix_nodes;

 pos_in_item = tb->tb_path->pos_in_item;

 tb->fs_gen = get_generation(tb->tb_sb);






 reiserfs_prepare_for_journal(tb->tb_sb,
         SB_BUFFER_WITH_SB(tb->tb_sb), 1);
 journal_mark_dirty(tb->transaction_handle, tb->tb_sb,
      SB_BUFFER_WITH_SB(tb->tb_sb));
 if (FILESYSTEM_CHANGED_TB(tb))
  return REPEAT_SEARCH;


 if (buffer_locked(tbS0)) {
  __wait_on_buffer(tbS0);
  if (FILESYSTEM_CHANGED_TB(tb))
   return REPEAT_SEARCH;
 }
 if (get_mem_for_virtual_node(tb) == REPEAT_SEARCH)

  return REPEAT_SEARCH;


 for (h = 0; h < MAX_HEIGHT && tb->insert_size[h]; h++) {
  ret = get_direct_parent(tb, h);
  if (ret != CARRY_ON)
   goto repeat;

  ret = check_balance(op_mode, tb, h, item_num,
        pos_in_item, ins_ih, data);
  if (ret != CARRY_ON) {
   if (ret == NO_BALANCING_NEEDED) {

    ret = get_neighbors(tb, h);
    if (ret != CARRY_ON)
     goto repeat;
    if (h != MAX_HEIGHT - 1)
     tb->insert_size[h + 1] = 0;

    break;
   }
   goto repeat;
  }

  ret = get_neighbors(tb, h);
  if (ret != CARRY_ON)
   goto repeat;



  ret = get_empty_nodes(tb, h);
  if (ret != CARRY_ON)
   goto repeat;

  if (!PATH_H_PBUFFER(tb->tb_path, h)) {



   RFALSE(tb->blknum[h] != 1,
          "PAP-8350: creating new empty root");

   if (h < MAX_HEIGHT - 1)
    tb->insert_size[h + 1] = 0;
  } else if (!PATH_H_PBUFFER(tb->tb_path, h + 1)) {
   if (tb->blknum[h] > 1) {





    RFALSE(h == MAX_HEIGHT - 1,
           "PAP-8355: attempt to create too high of a tree");

    tb->insert_size[h + 1] =
        (DC_SIZE +
         KEY_SIZE) * (tb->blknum[h] - 1) +
        DC_SIZE;
   } else if (h < MAX_HEIGHT - 1)
    tb->insert_size[h + 1] = 0;
  } else
   tb->insert_size[h + 1] =
       (DC_SIZE + KEY_SIZE) * (tb->blknum[h] - 1);
 }

 ret = wait_tb_buffers_until_unlocked(tb);
 if (ret == CARRY_ON) {
  if (FILESYSTEM_CHANGED_TB(tb)) {
   wait_tb_buffers_run = 1;
   ret = REPEAT_SEARCH;
   goto repeat;
  } else {
   return CARRY_ON;
  }
 } else {
  wait_tb_buffers_run = 1;
  goto repeat;
 }

      repeat:





 {
  int i;


  if (wait_tb_buffers_run) {
   pathrelse_and_restore(tb->tb_sb, tb->tb_path);
  } else {
   pathrelse(tb->tb_path);
  }

  for (i = 0; i < MAX_HEIGHT; i++) {
   if (wait_tb_buffers_run) {
    reiserfs_restore_prepared_buffer(tb->tb_sb,
         tb->L[i]);
    reiserfs_restore_prepared_buffer(tb->tb_sb,
         tb->R[i]);
    reiserfs_restore_prepared_buffer(tb->tb_sb,
         tb->FL[i]);
    reiserfs_restore_prepared_buffer(tb->tb_sb,
         tb->FR[i]);
    reiserfs_restore_prepared_buffer(tb->tb_sb,
         tb->
         CFL[i]);
    reiserfs_restore_prepared_buffer(tb->tb_sb,
         tb->
         CFR[i]);
   }

   brelse(tb->L[i]);
   brelse(tb->R[i]);
   brelse(tb->FL[i]);
   brelse(tb->FR[i]);
   brelse(tb->CFL[i]);
   brelse(tb->CFR[i]);

   tb->L[i] = ((void*)0);
   tb->R[i] = ((void*)0);
   tb->FL[i] = ((void*)0);
   tb->FR[i] = ((void*)0);
   tb->CFL[i] = ((void*)0);
   tb->CFR[i] = ((void*)0);
  }

  if (wait_tb_buffers_run) {
   for (i = 0; i < MAX_FEB_SIZE; i++) {
    if (tb->FEB[i])
     reiserfs_restore_prepared_buffer
         (tb->tb_sb, tb->FEB[i]);
   }
  }
  return ret;
 }

}
