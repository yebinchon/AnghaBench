
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline int between(u32 lower, u32 upper, u32 n)
{
 if ((lower < n) && (n < upper))
  return 1;
 if ((upper < lower) && ((n > lower) || (n < upper)))
  return 1;
 return 0;
}
