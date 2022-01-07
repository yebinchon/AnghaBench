
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const ti_int ;


 int CHAR_BIT ;
 int compilerrt_abort () ;

ti_int __absvti2(ti_int a) {
  const int N = (int)(sizeof(ti_int) * CHAR_BIT);
  if (a == ((ti_int)1 << (N - 1)))
    compilerrt_abort();
  const ti_int s = a >> (N - 1);
  return (a ^ s) - s;
}
