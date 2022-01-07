
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;



__attribute__((used)) static void
dt_aggregate_llquantize(int64_t *existing, int64_t *new, size_t size)
{
 int i;

 for (i = 1; i < size / sizeof (int64_t); i++)
  existing[i] = existing[i] + new[i];
}
