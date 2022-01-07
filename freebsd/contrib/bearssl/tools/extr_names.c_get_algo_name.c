
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* long_name; void const* impl; char const* short_name; } ;
struct TYPE_3__ {char const* long_name; void const* (* get ) () ;char const* short_name; } ;


 TYPE_2__* algo_names ;
 TYPE_1__* algo_names_dyn ;
 void const* stub1 () ;

const char *
get_algo_name(const void *impl, int long_name)
{
 size_t u;

 for (u = 0; algo_names[u].long_name; u ++) {
  if (impl == algo_names[u].impl) {
   return long_name
    ? algo_names[u].long_name
    : algo_names[u].short_name;
  }
 }
 for (u = 0; algo_names_dyn[u].long_name; u ++) {
  if (impl == algo_names_dyn[u].get()) {
   return long_name
    ? algo_names_dyn[u].long_name
    : algo_names_dyn[u].short_name;
  }
 }
 return "UNKNOWN";
}
