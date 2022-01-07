
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct assign_parm_data_one {int passed_type; int promoted_mode; } ;
struct assign_parm_data_all {int pretend_args_size; int args_so_far; } ;
struct TYPE_3__ {int (* setup_incoming_varargs ) (int *,int ,int ,int*,int) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;


 int stub1 (int *,int ,int ,int*,int) ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
assign_parms_setup_varargs (struct assign_parm_data_all *all,
       struct assign_parm_data_one *data, bool no_rtl)
{
  int varargs_pretend_bytes = 0;

  targetm.calls.setup_incoming_varargs (&all->args_so_far,
     data->promoted_mode,
     data->passed_type,
     &varargs_pretend_bytes, no_rtl);




  if (varargs_pretend_bytes > 0)
    all->pretend_args_size = varargs_pretend_bytes;
}
