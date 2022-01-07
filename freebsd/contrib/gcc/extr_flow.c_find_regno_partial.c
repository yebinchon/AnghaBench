
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_2__ {unsigned int regno_to_find; void* retval; } ;
typedef TYPE_1__ find_regno_partial_param ;


 int GET_CODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 unsigned int REGNO (void*) ;
 int REG_P (void*) ;



 void* SUBREG_REG (scalar_t__) ;
 void* XEXP (scalar_t__,int ) ;


__attribute__((used)) static int
find_regno_partial (rtx *ptr, void *data)
{
  find_regno_partial_param *param = (find_regno_partial_param *)data;
  unsigned reg = param->regno_to_find;
  param->retval = NULL_RTX;

  if (*ptr == NULL_RTX)
    return 0;

  switch (GET_CODE (*ptr))
    {
    case 128:
    case 131:
    case 130:
      if (REG_P (XEXP (*ptr, 0)) && REGNO (XEXP (*ptr, 0)) == reg)
 {
   param->retval = XEXP (*ptr, 0);
   return 1;
 }
      break;

    case 129:
      if (REG_P (SUBREG_REG (*ptr))
   && REGNO (SUBREG_REG (*ptr)) == reg)
 {
   param->retval = SUBREG_REG (*ptr);
   return 1;
 }
      break;

    default:
      break;
    }

  return 0;
}
