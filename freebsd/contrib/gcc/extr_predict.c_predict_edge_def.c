
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum prediction { ____Placeholder_prediction } prediction ;
typedef enum br_predictor { ____Placeholder_br_predictor } br_predictor ;
typedef int edge ;
struct TYPE_2__ {int hitrate; } ;


 int REG_BR_PROB_BASE ;
 int TAKEN ;
 int predict_edge (int ,int,int) ;
 TYPE_1__* predictor_info ;

void
predict_edge_def (edge e, enum br_predictor predictor,
    enum prediction taken)
{
   int probability = predictor_info[(int) predictor].hitrate;

   if (taken != TAKEN)
     probability = REG_BR_PROB_BASE - probability;

   predict_edge (e, predictor, probability);
}
