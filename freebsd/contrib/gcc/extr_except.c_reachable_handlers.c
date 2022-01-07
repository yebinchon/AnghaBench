
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {scalar_t__ built_landing_pads; } ;


 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 scalar_t__ JUMP_P (int *) ;
 int NULL_RTX ;
 int PATTERN (int *) ;
 int REG_EH_REGION ;
 scalar_t__ RESX ;
 int XEXP (int *,int ) ;
 int XINT (int ,int ) ;
 int arh_to_label ;
 int arh_to_landing_pad ;
 TYPE_2__* cfun ;
 int * find_reg_note (int *,int ,int ) ;
 int foreach_reachable_handler (int,int,int ,int **) ;

rtx
reachable_handlers (rtx insn)
{
  bool is_resx = 0;
  rtx handlers = ((void*)0);
  int region_number;

  if (JUMP_P (insn)
      && GET_CODE (PATTERN (insn)) == RESX)
    {
      region_number = XINT (PATTERN (insn), 0);
      is_resx = 1;
    }
  else
    {
      rtx note = find_reg_note (insn, REG_EH_REGION, NULL_RTX);
      if (!note || INTVAL (XEXP (note, 0)) <= 0)
 return ((void*)0);
      region_number = INTVAL (XEXP (note, 0));
    }

  foreach_reachable_handler (region_number, is_resx,
        (cfun->eh->built_landing_pads
         ? arh_to_landing_pad
         : arh_to_label),
        &handlers);

  return handlers;
}
