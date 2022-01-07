
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int su_int ;
typedef int si_int ;


 int __udivsi3 (int,int) ;

su_int __udivmodsi4(su_int a, su_int b, su_int *rem) {
  si_int d = __udivsi3(a, b);
  *rem = a - (d * b);
  return d;
}
