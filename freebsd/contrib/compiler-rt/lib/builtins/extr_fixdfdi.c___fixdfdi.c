
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int di_int ;


 int __fixunsdfdi (double) ;

di_int __fixdfdi(double a) {
  if (a < 0.0) {
    return -__fixunsdfdi(-a);
  }
  return __fixunsdfdi(a);
}
