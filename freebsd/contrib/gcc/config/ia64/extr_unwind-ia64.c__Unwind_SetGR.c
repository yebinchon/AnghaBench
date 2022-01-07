
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {void** eh_data; void* gp; } ;
typedef void* _Unwind_Word ;


 int unw_access_gr (struct _Unwind_Context*,int,void**,char*,int) ;

void
_Unwind_SetGR (struct _Unwind_Context *context, int index, _Unwind_Word val)
{
  char nat = 0;

  if (index == 1)
    context->gp = val;
  else if (index >= 15 && index <= 18)
    context->eh_data[index - 15] = val;
  else
    unw_access_gr (context, index, &val, &nat, 1);
}
