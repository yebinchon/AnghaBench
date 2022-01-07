
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev_sp; } ;
typedef TYPE_1__ phase1_vrs ;
typedef int _Unwind_Word ;
typedef int _Unwind_Context ;



_Unwind_Word
_Unwind_GetCFA (_Unwind_Context *context)
{
  return ((phase1_vrs *) context)->prev_sp;
}
