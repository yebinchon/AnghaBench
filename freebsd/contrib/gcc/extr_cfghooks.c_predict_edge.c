
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum br_predictor { ____Placeholder_br_predictor } br_predictor ;
typedef int edge ;
struct TYPE_2__ {int (* predict_edge ) (int ,int,int) ;int name; } ;


 TYPE_1__* cfg_hooks ;
 int internal_error (char*,int ) ;
 int stub1 (int ,int,int) ;

void
predict_edge (edge e, enum br_predictor predictor, int probability)
{
  if (!cfg_hooks->predict_edge)
    internal_error ("%s does not support predict_edge", cfg_hooks->name);

  cfg_hooks->predict_edge (e, predictor, probability);
}
