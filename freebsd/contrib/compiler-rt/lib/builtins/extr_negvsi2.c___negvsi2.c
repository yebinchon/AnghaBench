
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int si_int ;


 int CHAR_BIT ;
 int compilerrt_abort () ;

si_int __negvsi2(si_int a) {
  const si_int MIN = (si_int)1 << ((int)(sizeof(si_int) * CHAR_BIT) - 1);
  if (a == MIN)
    compilerrt_abort();
  return -a;
}
