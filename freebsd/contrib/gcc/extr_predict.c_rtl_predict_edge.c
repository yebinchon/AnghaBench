
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
typedef enum br_predictor { ____Placeholder_br_predictor } br_predictor ;
typedef TYPE_1__* edge ;
struct TYPE_3__ {int flags; int src; } ;


 int BB_END (int ) ;
 int EDGE_FALLTHRU ;
 int REG_BR_PROB_BASE ;
 int any_condjump_p (int ) ;
 int predict_insn (int ,int,int) ;

void
rtl_predict_edge (edge e, enum br_predictor predictor, int probability)
{
  rtx last_insn;
  last_insn = BB_END (e->src);



  if (!any_condjump_p (last_insn))
    return;


  if (e->flags & EDGE_FALLTHRU)
    probability = REG_BR_PROB_BASE - probability;

  predict_insn (last_insn, predictor, probability);
}
