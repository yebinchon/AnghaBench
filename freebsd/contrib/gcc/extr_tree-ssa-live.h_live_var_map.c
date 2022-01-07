
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int var_map ;
typedef TYPE_1__* tree_live_info_p ;
struct TYPE_3__ {int map; } ;



__attribute__((used)) static inline var_map
live_var_map (tree_live_info_p live)
{
  return live->map;
}
