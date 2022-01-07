
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_TO_LONGS (int ) ;
 int PERF_PMU_FORMAT_BITS ;
 int memset (unsigned long*,int ,int ) ;
 int set_bit (long,unsigned long*) ;

void perf_pmu__set_format(unsigned long *bits, long from, long to)
{
 long b;

 if (!to)
  to = from;

 memset(bits, 0, BITS_TO_LONGS(PERF_PMU_FORMAT_BITS));
 for (b = from; b <= to; b++)
  set_bit(b, bits);
}
