
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;




 int GET_CODE (int ) ;

 int can_throw_internal (int ) ;
 int nonlocal_goto_handler_labels ;

__attribute__((used)) static int perhaps_ends_bb_p (rtx insn)
{
  switch (GET_CODE (insn))
    {
    case 129:
    case 128:

      return 1;

    case 130:



      if (nonlocal_goto_handler_labels)
 return 1;

    default:
      return can_throw_internal (insn);
    }
}
