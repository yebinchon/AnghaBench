
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Unwind_Control_Block ;
typedef int _Unwind_Context ;


 int R_IP ;
 scalar_t__ _Unwind_GetGR (int *,int ) ;

__attribute__((used)) static inline _Unwind_Control_Block *
unwind_UCB_from_context (_Unwind_Context * context)
{
  return (_Unwind_Control_Block *) _Unwind_GetGR (context, R_IP);
}
