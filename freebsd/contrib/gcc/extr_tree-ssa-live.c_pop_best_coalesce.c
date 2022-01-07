
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* partition_pair_p ;
typedef TYPE_2__* coalesce_list_p ;
struct TYPE_6__ {TYPE_1__** list; int add_mode; } ;
struct TYPE_5__ {int first_partition; int second_partition; int cost; struct TYPE_5__* next; } ;


 int NO_BEST_COALESCE ;
 int free (TYPE_1__*) ;
 int gcc_assert (int) ;

__attribute__((used)) static int
pop_best_coalesce (coalesce_list_p cl, int *p1, int *p2)
{
  partition_pair_p node;
  int ret;

  gcc_assert (!cl->add_mode);

  node = cl->list[0];
  if (!node)
    return NO_BEST_COALESCE;

  cl->list[0] = node->next;

  *p1 = node->first_partition;
  *p2 = node->second_partition;
  ret = node->cost;
  free (node);

  return ret;
}
