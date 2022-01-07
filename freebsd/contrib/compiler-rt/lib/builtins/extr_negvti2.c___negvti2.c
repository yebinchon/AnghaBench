
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ti_int ;


 int CHAR_BIT ;
 int compilerrt_abort () ;

ti_int __negvti2(ti_int a) {
  const ti_int MIN = (ti_int)1 << ((int)(sizeof(ti_int) * CHAR_BIT) - 1);
  if (a == MIN)
    compilerrt_abort();
  return -a;
}
