
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_use {int dummy; } ;
struct iv_cand {int dummy; } ;
typedef int bitmap ;


 unsigned int INFTY ;
 int NULL_TREE ;
 unsigned int get_computation_cost (struct ivopts_data*,struct iv_use*,struct iv_cand*,int,int *) ;
 int set_use_iv_cost (struct ivopts_data*,struct iv_use*,struct iv_cand*,unsigned int,int ,int ) ;

__attribute__((used)) static bool
determine_use_iv_cost_address (struct ivopts_data *data,
          struct iv_use *use, struct iv_cand *cand)
{
  bitmap depends_on;
  unsigned cost = get_computation_cost (data, use, cand, 1, &depends_on);

  set_use_iv_cost (data, use, cand, cost, depends_on, NULL_TREE);

  return cost != INFTY;
}
