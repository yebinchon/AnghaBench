
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int var_map ;
struct partition_pair_d {int dummy; } ;
struct coalesce_list_d {int dummy; } ;
typedef int partition_pair_p ;
typedef TYPE_1__* coalesce_list_p ;
struct TYPE_3__ {int add_mode; int * list; int map; } ;


 int num_var_partitions (int ) ;
 scalar_t__ xcalloc (int ,int) ;
 scalar_t__ xmalloc (int) ;

coalesce_list_p
create_coalesce_list (var_map map)
{
  coalesce_list_p list;

  list = (coalesce_list_p) xmalloc (sizeof (struct coalesce_list_d));

  list->map = map;
  list->add_mode = 1;
  list->list = (partition_pair_p *) xcalloc (num_var_partitions (map),
          sizeof (struct partition_pair_d));
  return list;
}
