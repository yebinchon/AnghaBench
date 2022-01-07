
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int _Unwind_Ptr ;
struct TYPE_4__ {int fnstart; } ;
struct TYPE_5__ {TYPE_1__ pr_cache; } ;
typedef TYPE_2__ _Unwind_Control_Block ;
typedef int _Unwind_Context ;


 TYPE_2__* unwind_UCB_from_context (int *) ;

_Unwind_Ptr
_Unwind_GetRegionStart (_Unwind_Context * context)
{
  _Unwind_Control_Block *ucbp;

  ucbp = unwind_UCB_from_context (context);
  return (_Unwind_Ptr) ucbp->pr_cache.fnstart;
}
