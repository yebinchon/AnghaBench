
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct assign_parm_data_one {scalar_t__ nominal_mode; scalar_t__ passed_mode; int * stack_parm; scalar_t__ nominal_type; scalar_t__ passed_pointer; int * entry_parm; } ;
typedef int * rtx ;
struct TYPE_2__ {scalar_t__ stack_protect_guard; } ;


 scalar_t__ BLKmode ;
 scalar_t__ GET_MODE_ALIGNMENT (scalar_t__) ;
 scalar_t__ MEM_ALIGN (int *) ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ PREFERRED_STACK_BOUNDARY ;
 scalar_t__ STRICT_ALIGNMENT ;
 scalar_t__ TYPE_ALIGN (scalar_t__) ;
 TYPE_1__* cfun ;
 int flag_stack_protect ;

__attribute__((used)) static void
assign_parm_adjust_stack_rtl (struct assign_parm_data_one *data)
{
  rtx stack_parm = data->stack_parm;




  if (stack_parm
      && ((STRICT_ALIGNMENT
    && GET_MODE_ALIGNMENT (data->nominal_mode) > MEM_ALIGN (stack_parm))
   || (data->nominal_type
       && TYPE_ALIGN (data->nominal_type) > MEM_ALIGN (stack_parm)
       && MEM_ALIGN (stack_parm) < PREFERRED_STACK_BOUNDARY)))
    stack_parm = ((void*)0);



  else if (data->entry_parm == stack_parm
    && data->nominal_mode != BLKmode
    && data->nominal_mode != data->passed_mode)
    stack_parm = ((void*)0);



  else if (cfun->stack_protect_guard
    && (flag_stack_protect == 2
        || data->passed_pointer
        || POINTER_TYPE_P (data->nominal_type)))
    stack_parm = ((void*)0);

  data->stack_parm = stack_parm;
}
