
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int dummy; } ;
typedef scalar_t__ _Unwind_Ptr ;


 scalar_t__ _Unwind_GetGR (struct _Unwind_Context*,int) ;

__attribute__((used)) static inline void *
_Unwind_GetPtr (struct _Unwind_Context *context, int index)
{
  return (void *)(_Unwind_Ptr) _Unwind_GetGR (context, index);
}
