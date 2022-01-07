
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
double
copysign (double x, double y)
{
  if ((x < 0 && y > 0) || (x > 0 && y < 0))
    return -x;
  return x;
}
