
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_use {int stmt; } ;
struct iv_cand {int dummy; } ;
typedef int bitmap ;


 int get_computation_cost_at (struct ivopts_data*,struct iv_use*,struct iv_cand*,int,int *,int ) ;

__attribute__((used)) static unsigned
get_computation_cost (struct ivopts_data *data,
        struct iv_use *use, struct iv_cand *cand,
        bool address_p, bitmap *depends_on)
{
  return get_computation_cost_at (data,
      use, cand, address_p, depends_on, use->stmt);
}
