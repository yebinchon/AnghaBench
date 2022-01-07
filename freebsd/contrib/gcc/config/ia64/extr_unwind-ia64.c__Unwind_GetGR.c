
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int * eh_data; int gp; } ;
typedef int _Unwind_Word ;


 int unw_access_gr (struct _Unwind_Context*,int,int *,char*,int ) ;

_Unwind_Word
_Unwind_GetGR (struct _Unwind_Context *context, int index)
{
  _Unwind_Word ret;
  char nat;

  if (index == 1)
    return context->gp;
  else if (index >= 15 && index <= 18)
    return context->eh_data[index - 15];
  else
    unw_access_gr (context, index, &ret, &nat, 0);

  return ret;
}
