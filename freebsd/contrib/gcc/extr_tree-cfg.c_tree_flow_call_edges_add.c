
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ sbitmap ;
typedef int * edge ;
typedef int block_stmt_iterator ;
typedef TYPE_1__* basic_block ;
struct TYPE_11__ {TYPE_1__* prev_bb; } ;
struct TYPE_10__ {int index; } ;


 TYPE_1__* BASIC_BLOCK (int) ;
 int EDGE_FAKE ;
 TYPE_4__* EXIT_BLOCK_PTR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ NUM_FIXED_BLOCKS ;
 int TEST_BIT (scalar_t__,int) ;
 int bsi_commit_edge_inserts () ;
 int bsi_end_p (int ) ;
 int bsi_insert_on_edge (int *,int ) ;
 int bsi_last (TYPE_1__*) ;
 int bsi_prev (int *) ;
 scalar_t__ bsi_stmt (int ) ;
 int build_empty_stmt () ;
 int * find_edge (TYPE_1__*,TYPE_4__*) ;
 int gcc_assert (int ) ;
 int last_basic_block ;
 int make_edge (TYPE_1__*,TYPE_4__*,int ) ;
 scalar_t__ n_basic_blocks ;
 scalar_t__ need_fake_edge_p (scalar_t__) ;
 int * split_block (TYPE_1__*,scalar_t__) ;
 int verify_flow_info () ;

__attribute__((used)) static int
tree_flow_call_edges_add (sbitmap blocks)
{
  int i;
  int blocks_split = 0;
  int last_bb = last_basic_block;
  bool check_last_block = 0;

  if (n_basic_blocks == NUM_FIXED_BLOCKS)
    return 0;

  if (! blocks)
    check_last_block = 1;
  else
    check_last_block = TEST_BIT (blocks, EXIT_BLOCK_PTR->prev_bb->index);
  if (check_last_block)
    {
      basic_block bb = EXIT_BLOCK_PTR->prev_bb;
      block_stmt_iterator bsi = bsi_last (bb);
      tree t = NULL_TREE;
      if (!bsi_end_p (bsi))
 t = bsi_stmt (bsi);

      if (t && need_fake_edge_p (t))
 {
   edge e;

   e = find_edge (bb, EXIT_BLOCK_PTR);
   if (e)
     {
       bsi_insert_on_edge (e, build_empty_stmt ());
       bsi_commit_edge_inserts ();
     }
 }
    }




  for (i = 0; i < last_bb; i++)
    {
      basic_block bb = BASIC_BLOCK (i);
      block_stmt_iterator bsi;
      tree stmt, last_stmt;

      if (!bb)
 continue;

      if (blocks && !TEST_BIT (blocks, i))
 continue;

      bsi = bsi_last (bb);
      if (!bsi_end_p (bsi))
 {
   last_stmt = bsi_stmt (bsi);
   do
     {
       stmt = bsi_stmt (bsi);
       if (need_fake_edge_p (stmt))
  {
    edge e;
    if (stmt != last_stmt)
      {
        e = split_block (bb, stmt);
        if (e)
   blocks_split++;
      }
    make_edge (bb, EXIT_BLOCK_PTR, EDGE_FAKE);
  }
       bsi_prev (&bsi);
     }
   while (!bsi_end_p (bsi));
 }
    }

  if (blocks_split)
    verify_flow_info ();

  return blocks_split;
}
