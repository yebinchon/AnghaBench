
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long double
dt_fabsl(long double x)
{
 if (x < 0)
  return (-x);

 return (x);
}
