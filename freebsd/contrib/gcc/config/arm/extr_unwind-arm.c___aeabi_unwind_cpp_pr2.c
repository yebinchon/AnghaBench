
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Unwind_State ;
typedef int _Unwind_Reason_Code ;
typedef int _Unwind_Control_Block ;
typedef int _Unwind_Context ;


 int __gnu_unwind_pr_common (int ,int *,int *,int) ;

_Unwind_Reason_Code
__aeabi_unwind_cpp_pr2 (_Unwind_State state,
   _Unwind_Control_Block *ucbp,
   _Unwind_Context *context)
{
  return __gnu_unwind_pr_common (state, ucbp, context, 2);
}
