
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* low; void* high; } ;
struct TYPE_4__ {int all; TYPE_1__ s; } ;
typedef TYPE_2__ utwords ;
typedef int tu_int ;
typedef void* du_int ;



__attribute__((used)) static __inline tu_int make_tu(du_int h, du_int l) {
  utwords r;
  r.s.high = h;
  r.s.low = l;
  return r.all;
}
