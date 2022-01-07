
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int dummy; } ;
typedef int _Unwind_Ptr ;


 int _Unwind_GetIP (struct _Unwind_Context*) ;

__attribute__((used)) static inline _Unwind_Ptr
uw_identify_context (struct _Unwind_Context *context)
{
  return _Unwind_GetIP (context);
}
