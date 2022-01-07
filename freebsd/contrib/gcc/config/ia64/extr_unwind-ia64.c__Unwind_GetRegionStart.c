
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int region_start; } ;
typedef int _Unwind_Ptr ;



_Unwind_Ptr
_Unwind_GetRegionStart (struct _Unwind_Context *context)
{
  return context->region_start;
}
