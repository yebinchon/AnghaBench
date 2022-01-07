
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int su_int ;


 int __udivsi3 (int,int) ;

su_int __umodsi3(su_int a, su_int b) {
  return a - __udivsi3(a, b) * b;
}
