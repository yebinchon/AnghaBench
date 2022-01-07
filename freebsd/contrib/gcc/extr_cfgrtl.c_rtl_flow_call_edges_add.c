
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ sbitmap ;
typedef scalar_t__ rtx ;
typedef int * edge ;
typedef TYPE_1__* basic_block ;
struct TYPE_12__ {TYPE_1__* prev_bb; } ;
struct TYPE_11__ {int index; } ;


 TYPE_1__* BASIC_BLOCK (int) ;
 scalar_t__ BB_END (TYPE_1__*) ;
 scalar_t__ BB_HEAD (TYPE_1__*) ;
 scalar_t__ CALL_P (scalar_t__) ;
 int EDGE_FAKE ;
 TYPE_4__* EXIT_BLOCK_PTR ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int NUM_FIXED_BLOCKS ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int TEST_BIT (scalar_t__,int) ;
 int VOIDmode ;
 int commit_edge_insertions () ;
 int const0_rtx ;
 int * find_edge (TYPE_1__*,TYPE_4__*) ;
 int gcc_assert (int ) ;
 int gen_rtx_USE (int ,int ) ;
 int insert_insn_on_edge (int ,int *) ;
 scalar_t__ keep_with_call_p (scalar_t__) ;
 int last_basic_block ;
 int make_edge (TYPE_1__*,TYPE_4__*,int ) ;
 int n_basic_blocks ;
 scalar_t__ need_fake_edge_p (scalar_t__) ;
 int * split_block (TYPE_1__*,scalar_t__) ;
 int verify_flow_info () ;

__attribute__((used)) static int
rtl_flow_call_edges_add (sbitmap blocks)
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
      rtx insn = BB_END (bb);


      while (insn != BB_HEAD (bb)
      && keep_with_call_p (insn))
 insn = PREV_INSN (insn);

      if (need_fake_edge_p (insn))
 {
   edge e;

   e = find_edge (bb, EXIT_BLOCK_PTR);
   if (e)
     {
       insert_insn_on_edge (gen_rtx_USE (VOIDmode, const0_rtx), e);
       commit_edge_insertions ();
     }
 }
    }





  for (i = NUM_FIXED_BLOCKS; i < last_bb; i++)
    {
      basic_block bb = BASIC_BLOCK (i);
      rtx insn;
      rtx prev_insn;

      if (!bb)
 continue;

      if (blocks && !TEST_BIT (blocks, i))
 continue;

      for (insn = BB_END (bb); ; insn = prev_insn)
 {
   prev_insn = PREV_INSN (insn);
   if (need_fake_edge_p (insn))
     {
       edge e;
       rtx split_at_insn = insn;



       if (CALL_P (insn))
  while (split_at_insn != BB_END (bb)
         && keep_with_call_p (NEXT_INSN (split_at_insn)))
    split_at_insn = NEXT_INSN (split_at_insn);
       if (split_at_insn != BB_END (bb))
  {
    e = split_block (bb, split_at_insn);
    if (e)
      blocks_split++;
  }

       make_edge (bb, EXIT_BLOCK_PTR, EDGE_FAKE);
     }

   if (insn == BB_HEAD (bb))
     break;
 }
    }

  if (blocks_split)
    verify_flow_info ();

  return blocks_split;
}
