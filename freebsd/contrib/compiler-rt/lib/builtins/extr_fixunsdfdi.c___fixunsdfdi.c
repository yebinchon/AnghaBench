
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int su_int ;
typedef int du_int ;



du_int __fixunsdfdi(double a) {
  if (a <= 0.0)
    return 0;
  su_int high = a / 4294967296.f;
  su_int low = a - (double)high * 4294967296.f;
  return ((du_int)high << 32) | low;
}
