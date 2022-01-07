
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
buffer_lcm (size_t a, size_t b, size_t lcm_max)
{
  size_t lcm, m, n, q, r;


  if (!a)
    return b ? b : 8 * 1024;
  if (!b)
    return a;


  for (m = a, n = b; (r = m % n) != 0; m = n, n = r)
    continue;


  q = a / n;
  lcm = q * b;
  return lcm <= lcm_max && lcm / b == q ? lcm : a;
}
