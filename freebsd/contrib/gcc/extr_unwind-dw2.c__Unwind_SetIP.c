
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {void* ra; } ;
typedef scalar_t__ _Unwind_Ptr ;



inline void
_Unwind_SetIP (struct _Unwind_Context *context, _Unwind_Ptr val)
{
  context->ra = (void *) val;
}
