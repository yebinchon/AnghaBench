
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;



__attribute__((used)) static void
dt_aggregate_min(int64_t *existing, int64_t *new, size_t size)
{
 if (*new < *existing)
  *existing = *new;
}
