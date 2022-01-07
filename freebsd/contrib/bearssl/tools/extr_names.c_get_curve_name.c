
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int id; } ;


 TYPE_1__* curves ;

const char *
get_curve_name(int id)
{
 size_t u;

 for (u = 0; curves[u].name; u ++) {
  if (curves[u].id == id) {
   return curves[u].name;
  }
 }
 return ((void*)0);
}
