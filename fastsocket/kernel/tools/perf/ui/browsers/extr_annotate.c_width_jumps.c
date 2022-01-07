
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int width_jumps(int n)
{
 if (n >= 100)
  return 5;
 if (n / 10)
  return 2;
 return 1;
}
