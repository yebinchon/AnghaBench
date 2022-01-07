
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* partition_pair_p ;
typedef TYPE_2__* coalesce_list_p ;
struct TYPE_5__ {int map; TYPE_1__** list; scalar_t__ add_mode; } ;
struct TYPE_4__ {int second_partition; int cost; int first_partition; struct TYPE_4__* next; } ;
typedef int FILE ;


 int TDF_SLIM ;
 int fprintf (int *,char*,...) ;
 int num_var_partitions (int ) ;
 int partition_to_var (int ,int) ;
 int print_generic_expr (int *,int ,int ) ;

void
dump_coalesce_list (FILE *f, coalesce_list_p cl)
{
  partition_pair_p node;
  int x, num;
  tree var;

  if (cl->add_mode)
    {
      fprintf (f, "Coalesce List:\n");
      num = num_var_partitions (cl->map);
      for (x = 0; x < num; x++)
        {
   node = cl->list[x];
   if (node)
     {
       fprintf (f, "[");
       print_generic_expr (f, partition_to_var (cl->map, x), TDF_SLIM);
       fprintf (f, "] - ");
       for ( ; node; node = node->next)
         {
    var = partition_to_var (cl->map, node->second_partition);
    print_generic_expr (f, var, TDF_SLIM);
    fprintf (f, "(%1d), ", node->cost);
  }
       fprintf (f, "\n");
     }
 }
    }
  else
    {
      fprintf (f, "Sorted Coalesce list:\n");
      for (node = cl->list[0]; node; node = node->next)
        {
   fprintf (f, "(%d) ", node->cost);
   var = partition_to_var (cl->map, node->first_partition);
   print_generic_expr (f, var, TDF_SLIM);
   fprintf (f, " : ");
   var = partition_to_var (cl->map, node->second_partition);
   print_generic_expr (f, var, TDF_SLIM);
   fprintf (f, "\n");
 }
    }
}
