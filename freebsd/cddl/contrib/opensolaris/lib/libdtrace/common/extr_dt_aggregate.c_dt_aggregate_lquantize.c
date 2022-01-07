
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ int64_t ;


 int DTRACE_LQUANTIZE_LEVELS (scalar_t__) ;

__attribute__((used)) static void
dt_aggregate_lquantize(int64_t *existing, int64_t *new, size_t size)
{
 int64_t arg = *existing++;
 uint16_t levels = DTRACE_LQUANTIZE_LEVELS(arg);
 int i;

 for (i = 0; i <= levels + 1; i++)
  existing[i] = existing[i] + new[i + 1];
}
