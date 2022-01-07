
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int su_int ;
typedef int du_int ;



du_int __fixunssfdi(float a) {
  if (a <= 0.0f)
    return 0;
  double da = a;
  su_int high = da / 4294967296.f;
  su_int low = da - (double)high * 4294967296.f;
  return ((du_int)high << 32) | low;
}
