
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const si_int ;


 int CHAR_BIT ;
 int compilerrt_abort () ;

si_int __mulvsi3(si_int a, si_int b) {
  const int N = (int)(sizeof(si_int) * CHAR_BIT);
  const si_int MIN = (si_int)1 << (N - 1);
  const si_int MAX = ~MIN;
  if (a == MIN) {
    if (b == 0 || b == 1)
      return a * b;
    compilerrt_abort();
  }
  if (b == MIN) {
    if (a == 0 || a == 1)
      return a * b;
    compilerrt_abort();
  }
  si_int sa = a >> (N - 1);
  si_int abs_a = (a ^ sa) - sa;
  si_int sb = b >> (N - 1);
  si_int abs_b = (b ^ sb) - sb;
  if (abs_a < 2 || abs_b < 2)
    return a * b;
  if (sa == sb) {
    if (abs_a > MAX / abs_b)
      compilerrt_abort();
  } else {
    if (abs_a > MIN / -abs_b)
      compilerrt_abort();
  }
  return a * b;
}
