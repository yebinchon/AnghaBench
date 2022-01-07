
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;



__attribute__((used)) static void update_avg(u64 *avg, u64 sample)
{
 s64 diff = sample - *avg;
 *avg += diff >> 3;
}
