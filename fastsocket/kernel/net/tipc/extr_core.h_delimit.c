
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int delimit(int val, int min, int max)
{
 if (val > max)
  return max;
 if (val < min)
  return min;
 return val;
}
