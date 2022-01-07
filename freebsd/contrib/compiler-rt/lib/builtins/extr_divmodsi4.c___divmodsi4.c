
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int si_int ;


 int __divsi3 (int,int) ;

si_int __divmodsi4(si_int a, si_int b, si_int *rem) {
  si_int d = __divsi3(a, b);
  *rem = a - (d * b);
  return d;
}
