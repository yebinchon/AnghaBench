
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int basic_block ;
struct TYPE_4__ {int loop_father; } ;
struct TYPE_3__ {int loop_father; } ;


 int BASIC_BLOCK (unsigned int) ;
 int add_bb_to_loop (int ,int ) ;
 int bsi_commit_edge_inserts () ;
 int find_common_loop (int ,int ) ;
 unsigned int last_basic_block ;
 TYPE_2__* single_pred (int ) ;
 TYPE_1__* single_succ (int ) ;

void
loop_commit_inserts (void)
{
  unsigned old_last_basic_block, i;
  basic_block bb;

  old_last_basic_block = last_basic_block;
  bsi_commit_edge_inserts ();
  for (i = old_last_basic_block; i < (unsigned) last_basic_block; i++)
    {
      bb = BASIC_BLOCK (i);
      add_bb_to_loop (bb,
        find_common_loop (single_pred (bb)->loop_father,
     single_succ (bb)->loop_father));
    }
}
