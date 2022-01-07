
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Unwind_Ptr ;
typedef int _Unwind_Context ;


 int abort () ;

_Unwind_Ptr
_Unwind_GetDataRelBase (_Unwind_Context *context __attribute__ ((unused)))
{
  abort ();
}
