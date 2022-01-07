
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {unsigned int num_nodes; } ;
typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_END (int ) ;
 scalar_t__ BB_HEAD (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int free (int *) ;
 int * get_loop_body (struct loop*) ;

int
num_loop_insns (struct loop *loop)
{
  basic_block *bbs, bb;
  unsigned i, ninsns = 0;
  rtx insn;

  bbs = get_loop_body (loop);
  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = bbs[i];
      ninsns++;
      for (insn = BB_HEAD (bb); insn != BB_END (bb); insn = NEXT_INSN (insn))
 if (INSN_P (insn))
   ninsns++;
    }
  free(bbs);

  return ninsns;
}
