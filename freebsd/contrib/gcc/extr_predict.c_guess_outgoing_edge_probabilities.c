
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int basic_block ;


 int BB_END (int ) ;
 int bb_estimate_probability_locally (int ) ;
 int combine_predictions_for_insn (int ,int ) ;

void
guess_outgoing_edge_probabilities (basic_block bb)
{
  bb_estimate_probability_locally (bb);
  combine_predictions_for_insn (BB_END (bb), bb);
}
