
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int _uw ;
struct TYPE_7__ {int data; int* next; int bytes_left; int words_left; } ;
typedef TYPE_2__ __gnu_unwind_state ;
typedef int _Unwind_Reason_Code ;
struct TYPE_6__ {scalar_t__ ehtp; } ;
struct TYPE_8__ {TYPE_1__ pr_cache; } ;
typedef TYPE_3__ _Unwind_Control_Block ;
typedef int _Unwind_Context ;


 int __gnu_unwind_execute (int *,TYPE_2__*) ;

_Unwind_Reason_Code
__gnu_unwind_frame (_Unwind_Control_Block * ucbp, _Unwind_Context * context)
{
  _uw *ptr;
  __gnu_unwind_state uws;

  ptr = (_uw *) ucbp->pr_cache.ehtp;

  ptr++;

  uws.data = (*ptr) << 8;
  uws.next = ptr + 1;
  uws.bytes_left = 3;
  uws.words_left = ((*ptr) >> 24) & 0xff;

  return __gnu_unwind_execute (context, &uws);
}
