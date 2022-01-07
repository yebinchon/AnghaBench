
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* partition_pair_p ;
typedef TYPE_2__* coalesce_list_p ;
struct TYPE_7__ {int add_mode; } ;
struct TYPE_6__ {int cost; } ;


 TYPE_1__* find_partition_pair (TYPE_2__*,int,int,int) ;
 int gcc_assert (int ) ;

void
add_coalesce (coalesce_list_p cl, int p1, int p2,
       int value)
{
  partition_pair_p node;

  gcc_assert (cl->add_mode);

  if (p1 == p2)
    return;

  node = find_partition_pair (cl, p1, p2, 1);

  node->cost += value;
}
