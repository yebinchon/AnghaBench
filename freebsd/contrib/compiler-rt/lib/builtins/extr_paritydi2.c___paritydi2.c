
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int si_int ;
struct TYPE_3__ {int high; int low; } ;
struct TYPE_4__ {TYPE_1__ s; int all; } ;
typedef TYPE_2__ dwords ;
typedef int di_int ;


 int __paritysi2 (int) ;

si_int __paritydi2(di_int a) {
  dwords x;
  x.all = a;
  return __paritysi2(x.s.high ^ x.s.low);
}
