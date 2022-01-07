
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int si_int ;


 int __divsi3 (int,int) ;

si_int __modsi3(si_int a, si_int b) {
  return a - __divsi3(a, b) * b;
}
