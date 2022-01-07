
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signed_overflow_ok_p; } ;
typedef TYPE_1__* CGEN_CPU_DESC ;



void
cgen_set_signed_overflow_ok (CGEN_CPU_DESC cd)
{
  cd->signed_overflow_ok_p = 1;
}
