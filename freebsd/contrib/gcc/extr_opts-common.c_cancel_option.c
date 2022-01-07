
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int neg_index; } ;


 TYPE_1__* cl_options ;

__attribute__((used)) static bool
cancel_option (int opt_idx, int next_opt_idx, int orig_next_opt_idx)
{


  if (cl_options [next_opt_idx].neg_index == opt_idx)
    return 1;

  if (cl_options [next_opt_idx].neg_index != orig_next_opt_idx)
    return cancel_option (opt_idx, cl_options [next_opt_idx].neg_index,
     orig_next_opt_idx);

  return 0;
}
