
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mult_cost {int cost; int latency; } ;
struct TYPE_4__ {int cost; int latency; } ;
struct algorithm {TYPE_1__ cost; } ;
typedef enum mult_variant { ____Placeholder_mult_variant } mult_variant ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CHEAPER_MULT_COST (TYPE_1__*,TYPE_1__*) ;
 int GET_MODE_BITSIZE (int) ;
 int HOST_BITS_PER_INT ;
 int MULT_COST_LESS (TYPE_1__*,int) ;
 int* add_cost ;
 int add_variant ;
 int basic_variant ;
 int* neg_cost ;
 int negate_variant ;
 int synth_mult (struct algorithm*,int,struct mult_cost*,int) ;

__attribute__((used)) static bool
choose_mult_variant (enum machine_mode mode, HOST_WIDE_INT val,
       struct algorithm *alg, enum mult_variant *variant,
       int mult_cost)
{
  struct algorithm alg2;
  struct mult_cost limit;
  int op_cost;


  if (mult_cost < 0)
    return 0;




  op_cost = 2 * GET_MODE_BITSIZE (mode) * add_cost[mode];
  if (mult_cost > op_cost)
    mult_cost = op_cost;

  *variant = basic_variant;
  limit.cost = mult_cost;
  limit.latency = mult_cost;
  synth_mult (alg, val, &limit, mode);



  if (HOST_BITS_PER_INT >= GET_MODE_BITSIZE (mode))
    {
      op_cost = neg_cost[mode];
      if (MULT_COST_LESS (&alg->cost, mult_cost))
 {
   limit.cost = alg->cost.cost - op_cost;
   limit.latency = alg->cost.latency - op_cost;
 }
      else
 {
   limit.cost = mult_cost - op_cost;
   limit.latency = mult_cost - op_cost;
 }

      synth_mult (&alg2, -val, &limit, mode);
      alg2.cost.cost += op_cost;
      alg2.cost.latency += op_cost;
      if (CHEAPER_MULT_COST (&alg2.cost, &alg->cost))
 *alg = alg2, *variant = negate_variant;
    }


  op_cost = add_cost[mode];
  if (MULT_COST_LESS (&alg->cost, mult_cost))
    {
      limit.cost = alg->cost.cost - op_cost;
      limit.latency = alg->cost.latency - op_cost;
    }
  else
    {
      limit.cost = mult_cost - op_cost;
      limit.latency = mult_cost - op_cost;
    }

  synth_mult (&alg2, val - 1, &limit, mode);
  alg2.cost.cost += op_cost;
  alg2.cost.latency += op_cost;
  if (CHEAPER_MULT_COST (&alg2.cost, &alg->cost))
    *alg = alg2, *variant = add_variant;

  return MULT_COST_LESS (&alg->cost, mult_cost);
}
