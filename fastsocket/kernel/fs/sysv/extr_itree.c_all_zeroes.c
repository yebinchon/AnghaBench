
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysv_zone_t ;



__attribute__((used)) static inline int all_zeroes(sysv_zone_t *p, sysv_zone_t *q)
{
 while (p < q)
  if (*p++)
   return 0;
 return 1;
}
