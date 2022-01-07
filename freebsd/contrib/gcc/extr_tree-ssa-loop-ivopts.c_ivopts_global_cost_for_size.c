
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int regs_used; } ;


 int global_cost_for_size (unsigned int,int ,int ) ;
 int n_iv_uses (struct ivopts_data*) ;

__attribute__((used)) static unsigned
ivopts_global_cost_for_size (struct ivopts_data *data, unsigned size)
{
  return global_cost_for_size (size, data->regs_used, n_iv_uses (data));
}
