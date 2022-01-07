
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ X_add_number; int X_add_symbol; int X_op; } ;
typedef TYPE_1__ expressionS ;


 int O_constant ;
 int O_symbol ;
 scalar_t__ abs_section_offset ;
 scalar_t__ absolute_section ;
 scalar_t__ now_seg ;
 int symbol_temp_new_now () ;

__attribute__((used)) static void
current_location (expressionS *expressionp)
{
  if (now_seg == absolute_section)
    {
      expressionp->X_op = O_constant;
      expressionp->X_add_number = abs_section_offset;
    }
  else
    {
      expressionp->X_op = O_symbol;
      expressionp->X_add_symbol = symbol_temp_new_now ();
      expressionp->X_add_number = 0;
    }
}
