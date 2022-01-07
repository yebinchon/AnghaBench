
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {TYPE_2__* elt; } ;
struct TYPE_4__ {int val_rtx; } ;
struct TYPE_5__ {TYPE_1__ u; } ;


 int GET_MODE (int ) ;
 int REGNO (int ) ;
 int REG_P (int ) ;
 TYPE_3__* REG_VALUES (int ) ;
 int VOIDmode ;

enum machine_mode
cselib_reg_set_mode (rtx x)
{
  if (!REG_P (x))
    return GET_MODE (x);

  if (REG_VALUES (REGNO (x)) == ((void*)0)
      || REG_VALUES (REGNO (x))->elt == ((void*)0))
    return VOIDmode;

  return GET_MODE (REG_VALUES (REGNO (x))->elt->u.val_rtx);
}
