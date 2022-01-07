
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int int64_t ;
typedef int int32_t ;


 int DTRACE_LQUANTIZE_BASE (int ) ;
 int DTRACE_LQUANTIZE_LEVELS (int ) ;
 int DTRACE_LQUANTIZE_STEP (int ) ;

__attribute__((used)) static int64_t
dt_aggregate_lquantizedzero(int64_t *lquanta)
{
 int64_t arg = *lquanta++;
 int32_t base = DTRACE_LQUANTIZE_BASE(arg);
 uint16_t step = DTRACE_LQUANTIZE_STEP(arg);
 uint16_t levels = DTRACE_LQUANTIZE_LEVELS(arg), i;

 if (base - 1 == 0)
  return (lquanta[0]);

 for (i = 0; i < levels; base += step, i++) {
  if (base != 0)
   continue;

  return (lquanta[i + 1]);
 }

 if (base + 1 == 0)
  return (lquanta[levels + 1]);

 return (0);
}
