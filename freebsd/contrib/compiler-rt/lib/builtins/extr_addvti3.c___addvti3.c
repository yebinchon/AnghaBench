
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tu_int ;
typedef scalar_t__ ti_int ;


 int compilerrt_abort () ;

ti_int __addvti3(ti_int a, ti_int b) {
  ti_int s = (tu_int)a + (tu_int)b;
  if (b >= 0) {
    if (s < a)
      compilerrt_abort();
  } else {
    if (s >= a)
      compilerrt_abort();
  }
  return s;
}
