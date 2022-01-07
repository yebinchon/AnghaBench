
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int high; int low; } ;
struct TYPE_4__ {TYPE_1__ s; int all; } ;
typedef TYPE_2__ twords ;
typedef int ti_int ;
typedef int si_int ;


 int __paritydi2 (int) ;

si_int __parityti2(ti_int a) {
  twords x;
  x.all = a;
  return __paritydi2(x.s.high ^ x.s.low);
}
