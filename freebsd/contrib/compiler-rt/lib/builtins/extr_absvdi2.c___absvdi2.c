
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const di_int ;


 int CHAR_BIT ;
 int compilerrt_abort () ;

di_int __absvdi2(di_int a) {
  const int N = (int)(sizeof(di_int) * CHAR_BIT);
  if (a == ((di_int)1 << (N - 1)))
    compilerrt_abort();
  const di_int t = a >> (N - 1);
  return (a ^ t) - t;
}
