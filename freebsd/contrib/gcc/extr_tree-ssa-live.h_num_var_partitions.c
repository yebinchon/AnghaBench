
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* var_map ;
struct TYPE_3__ {int num_partitions; } ;



__attribute__((used)) static inline unsigned
num_var_partitions (var_map map)
{
  return map->num_partitions;
}
