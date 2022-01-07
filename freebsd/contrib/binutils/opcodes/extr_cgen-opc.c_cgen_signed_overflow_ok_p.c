
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int signed_overflow_ok_p; } ;
typedef TYPE_1__* CGEN_CPU_DESC ;



unsigned int
cgen_signed_overflow_ok_p (CGEN_CPU_DESC cd)
{
  return cd->signed_overflow_ok_p;
}
