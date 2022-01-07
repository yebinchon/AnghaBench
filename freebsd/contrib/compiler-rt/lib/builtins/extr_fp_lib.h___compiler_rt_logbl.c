
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double crt_logbl (long double) ;

__attribute__((used)) static __inline long double __compiler_rt_logbl(long double x) {
  return crt_logbl(x);
}
