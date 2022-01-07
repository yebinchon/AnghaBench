
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int di_int ;


 int CHAR_BIT ;
 int compilerrt_abort () ;

di_int __negvdi2(di_int a) {
  const di_int MIN = (di_int)1 << ((int)(sizeof(di_int) * CHAR_BIT) - 1);
  if (a == MIN)
    compilerrt_abort();
  return -a;
}
