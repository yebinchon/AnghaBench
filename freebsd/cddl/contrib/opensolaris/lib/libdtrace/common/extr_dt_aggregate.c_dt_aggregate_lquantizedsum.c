
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;


 int DTRACE_LQUANTIZE_BASE (scalar_t__) ;
 int DTRACE_LQUANTIZE_LEVELS (scalar_t__) ;
 int DTRACE_LQUANTIZE_STEP (scalar_t__) ;

__attribute__((used)) static long double
dt_aggregate_lquantizedsum(int64_t *lquanta)
{
 int64_t arg = *lquanta++;
 int32_t base = DTRACE_LQUANTIZE_BASE(arg);
 uint16_t step = DTRACE_LQUANTIZE_STEP(arg);
 uint16_t levels = DTRACE_LQUANTIZE_LEVELS(arg), i;
 long double total = (long double)lquanta[0] * (long double)(base - 1);

 for (i = 0; i < levels; base += step, i++)
  total += (long double)lquanta[i + 1] * (long double)base;

 return (total + (long double)lquanta[levels + 1] *
     (long double)(base + 1));
}
