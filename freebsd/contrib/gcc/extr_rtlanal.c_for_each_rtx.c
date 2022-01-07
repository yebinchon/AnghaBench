
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* rtx_function ) (scalar_t__*,void*) ;
typedef scalar_t__ rtx ;


 size_t GET_CODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int for_each_rtx_1 (scalar_t__,int,int (*) (scalar_t__*,void*),void*) ;
 int* non_rtx_starting_operands ;
 int stub1 (scalar_t__*,void*) ;

int
for_each_rtx (rtx *x, rtx_function f, void *data)
{
  int result;
  int i;


  result = (*f) (x, data);
  if (result == -1)

    return 0;
  else if (result != 0)

    return result;

  if (*x == NULL_RTX)

    return 0;

  i = non_rtx_starting_operands[GET_CODE (*x)];
  if (i < 0)
    return 0;

  return for_each_rtx_1 (*x, i, f, data);
}
