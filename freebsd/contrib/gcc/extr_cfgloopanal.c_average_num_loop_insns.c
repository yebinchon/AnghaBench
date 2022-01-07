
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct loop {unsigned int num_nodes; TYPE_1__* header; } ;
typedef scalar_t__ rtx ;
typedef TYPE_2__* basic_block ;
struct TYPE_8__ {unsigned int frequency; } ;
struct TYPE_7__ {scalar_t__ frequency; } ;


 scalar_t__ BB_END (TYPE_2__*) ;
 unsigned int BB_FREQ_MAX ;
 scalar_t__ BB_HEAD (TYPE_2__*) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int free (TYPE_2__**) ;
 TYPE_2__** get_loop_body (struct loop*) ;

int
average_num_loop_insns (struct loop *loop)
{
  basic_block *bbs, bb;
  unsigned i, binsns, ninsns, ratio;
  rtx insn;

  ninsns = 0;
  bbs = get_loop_body (loop);
  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = bbs[i];

      binsns = 1;
      for (insn = BB_HEAD (bb); insn != BB_END (bb); insn = NEXT_INSN (insn))
 if (INSN_P (insn))
   binsns++;

      ratio = loop->header->frequency == 0
       ? BB_FREQ_MAX
       : (bb->frequency * BB_FREQ_MAX) / loop->header->frequency;
      ninsns += binsns * ratio;
    }
  free(bbs);

  ninsns /= BB_FREQ_MAX;
  if (!ninsns)
    ninsns = 1;

  return ninsns;
}
