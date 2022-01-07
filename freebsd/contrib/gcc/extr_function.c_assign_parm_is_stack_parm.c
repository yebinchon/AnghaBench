
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ var; scalar_t__ constant; } ;
struct TYPE_5__ {TYPE_1__ size; } ;
struct assign_parm_data_one {scalar_t__ partial; TYPE_2__ locate; int * entry_parm; } ;
struct TYPE_6__ {int constant; } ;
struct assign_parm_data_all {scalar_t__ reg_parm_stack_space; TYPE_3__ stack_args_size; } ;


 int ADD_PARM_SIZE (TYPE_3__,scalar_t__) ;
 scalar_t__ GET_CODE (int *) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PARALLEL ;
 scalar_t__ XEXP (int ,int ) ;
 int XVECEXP (int *,int ,int ) ;

__attribute__((used)) static bool
assign_parm_is_stack_parm (struct assign_parm_data_all *all,
      struct assign_parm_data_one *data)
{

  if (data->entry_parm == ((void*)0))
    ;


  else if (data->partial != 0)
    ;


  else if (GET_CODE (data->entry_parm) == PARALLEL
    && XEXP (XVECEXP (data->entry_parm, 0, 0), 0) == NULL_RTX)
    ;


  else if (all->reg_parm_stack_space > 0)
    ;

  else
    return 0;

  all->stack_args_size.constant += data->locate.size.constant;
  if (data->locate.size.var)
    ADD_PARM_SIZE (all->stack_args_size, data->locate.size.var);

  return 1;
}
