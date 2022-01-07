
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* tpa_p ;
struct TYPE_8__ {int map; } ;
typedef int FILE ;


 int TDF_SLIM ;
 int TPA_NONE ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int partition_to_var (int ,int) ;
 int print_generic_expr (int *,int ,int ) ;
 int tpa_find_tree (TYPE_1__*,int) ;
 int tpa_first_partition (TYPE_1__*,int) ;
 int tpa_next_partition (TYPE_1__*,int) ;
 int tpa_num_trees (TYPE_1__*) ;
 int tpa_tree (TYPE_1__*,int) ;

void
tpa_dump (FILE *f, tpa_p tpa)
{
  int x, i;

  if (!tpa)
    return;

  for (x = 0; x < tpa_num_trees (tpa); x++)
    {
      print_generic_expr (f, tpa_tree (tpa, x), TDF_SLIM);
      fprintf (f, " : (");
      for (i = tpa_first_partition (tpa, x);
    i != TPA_NONE;
    i = tpa_next_partition (tpa, i))
 {
   fprintf (f, "(%d)",i);
   print_generic_expr (f, partition_to_var (tpa->map, i), TDF_SLIM);
   fprintf (f, " ");






 }
      fprintf (f, ")\n");
    }
  fflush (f);
}
