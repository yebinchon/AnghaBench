
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;

__attribute__((used)) static double
approx_sqrt (double x)
{
  double s, d;

  if (x < 0)
    abort ();
  if (x == 0)
    return 0;

  s = x;
  do
    {
      d = (s * s - x) / (2 * s);
      s -= d;
    }
  while (d > .0001);
  return s;
}
