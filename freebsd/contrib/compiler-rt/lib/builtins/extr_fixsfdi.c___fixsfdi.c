
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int di_int ;


 int __fixunssfdi (float) ;

di_int __fixsfdi(float a) {
  if (a < 0.0f) {
    return -__fixunssfdi(-a);
  }
  return __fixunssfdi(a);
}
