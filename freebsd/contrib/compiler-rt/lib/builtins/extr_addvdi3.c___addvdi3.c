
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ du_int ;
typedef scalar_t__ di_int ;


 int compilerrt_abort () ;

di_int __addvdi3(di_int a, di_int b) {
  di_int s = (du_int)a + (du_int)b;
  if (b >= 0) {
    if (s < a)
      compilerrt_abort();
  } else {
    if (s >= a)
      compilerrt_abort();
  }
  return s;
}
