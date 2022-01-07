
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * operand; } ;


 int CONST ;
 int GET_CODE (int ) ;
 int MINUS ;
 int SYMBOL_REF ;
 int XEXP (int ,int) ;
 int flag_pic ;
 int gcc_assert (int) ;
 int global_offset_table ;
 TYPE_1__ recog_data ;

int
check_pic (int i)
{
  switch (flag_pic)
    {
    case 1:
      gcc_assert (GET_CODE (recog_data.operand[i]) != SYMBOL_REF
      && (GET_CODE (recog_data.operand[i]) != CONST
           || (GET_CODE (XEXP (recog_data.operand[i], 0)) == MINUS
        && (XEXP (XEXP (recog_data.operand[i], 0), 0)
     == global_offset_table)
        && (GET_CODE (XEXP (XEXP (recog_data.operand[i], 0), 1))
     == CONST))));
    case 2:
    default:
      return 1;
    }
}
