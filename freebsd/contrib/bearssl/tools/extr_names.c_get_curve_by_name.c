
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; scalar_t__* sid; scalar_t__ name; } ;


 TYPE_1__* curves ;
 scalar_t__ eqstr (scalar_t__,char const*) ;

int
get_curve_by_name(const char *str)
{
 size_t u, v;

 for (u = 0; curves[u].name; u ++) {
  for (v = 0; curves[u].sid[v]; v ++) {
   if (eqstr(curves[u].sid[v], str)) {
    return curves[u].id;
   }
  }
 }
 return -1;
}
