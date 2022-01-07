
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 unsigned long long PERF_SAMPLE_MASK ;

__attribute__((used)) static int __perf_evsel__sample_size(u64 sample_type)
{
 u64 mask = sample_type & PERF_SAMPLE_MASK;
 int size = 0;
 int i;

 for (i = 0; i < 64; i++) {
  if (mask & (1ULL << i))
   size++;
 }

 size *= sizeof(u64);

 return size;
}
