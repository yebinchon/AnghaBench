
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int di_int ;


 int __divdi3 (int,int) ;

di_int __divmoddi4(di_int a, di_int b, di_int *rem) {
  di_int d = __divdi3(a, b);
  *rem = a - (d * b);
  return d;
}
