
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_map ;
typedef int tree ;
typedef int tpa_p ;
typedef int conflict_graph ;
typedef scalar_t__ coalesce_list_p ;
typedef int FILE ;


 scalar_t__ NO_BEST_COALESCE ;
 int NO_PARTITION ;
 int TDF_SLIM ;
 int TPA_NONE ;
 int conflict_graph_conflict_p (int ,int,int) ;
 int conflict_graph_merge_regs (int ,int,int) ;
 int fprintf (int *,char*,...) ;
 int partition_to_var (int ,int) ;
 scalar_t__ pop_best_coalesce (scalar_t__,int*,int*) ;
 int print_generic_expr (int *,int ,int ) ;
 int tpa_find_tree (int ,int) ;
 int tpa_first_partition (int ,int) ;
 int tpa_next_partition (int ,int) ;
 int tpa_num_trees (int ) ;
 int tpa_remove_partition (int ,int,int) ;
 int var_to_partition (int ,int ) ;
 int var_union (int ,int ,int ) ;

void
coalesce_tpa_members (tpa_p tpa, conflict_graph graph, var_map map,
        coalesce_list_p cl, FILE *debug)
{
  int x, y, z, w;
  tree var, tmp;


  if (cl)
    {
      while (pop_best_coalesce (cl, &x, &y) != NO_BEST_COALESCE)
        {
   if (debug)
     {
       fprintf (debug, "Coalesce list: (%d)", x);
       print_generic_expr (debug, partition_to_var (map, x), TDF_SLIM);
       fprintf (debug, " & (%d)", y);
       print_generic_expr (debug, partition_to_var (map, y), TDF_SLIM);
     }

   w = tpa_find_tree (tpa, x);
   z = tpa_find_tree (tpa, y);
   if (w != z || w == TPA_NONE || z == TPA_NONE)
     {
       if (debug)
  {
    if (w != z)
      fprintf (debug, ": Fail, Non-matching TPA's\n");
    if (w == TPA_NONE)
      fprintf (debug, ": Fail %d non TPA.\n", x);
    else
      fprintf (debug, ": Fail %d non TPA.\n", y);
  }
       continue;
     }
   var = partition_to_var (map, x);
   tmp = partition_to_var (map, y);
   x = var_to_partition (map, var);
   y = var_to_partition (map, tmp);
   if (debug)
     fprintf (debug, " [map: %d, %d] ", x, y);
   if (x == y)
     {
       if (debug)
  fprintf (debug, ": Already Coalesced.\n");
       continue;
     }
   if (!conflict_graph_conflict_p (graph, x, y))
     {
       z = var_union (map, var, tmp);
       if (z == NO_PARTITION)
         {
    if (debug)
      fprintf (debug, ": Unable to perform partition union.\n");
    continue;
  }



       if (z == x)
         {
    conflict_graph_merge_regs (graph, x, y);
    w = tpa_find_tree (tpa, y);
    tpa_remove_partition (tpa, w, y);
  }
       else
         {
    conflict_graph_merge_regs (graph, y, x);
    w = tpa_find_tree (tpa, x);
    tpa_remove_partition (tpa, w, x);
  }

       if (debug)
  fprintf (debug, ": Success -> %d\n", z);
     }
   else
     if (debug)
       fprintf (debug, ": Fail due to conflict\n");
 }

      return;
    }

  for (x = 0; x < tpa_num_trees (tpa); x++)
    {
      while (tpa_first_partition (tpa, x) != TPA_NONE)
        {
   int p1, p2;

   y = tpa_first_partition (tpa, x);
   tpa_remove_partition (tpa, x, y);

   var = partition_to_var (map, y);

   p1 = var_to_partition (map, var);

   for (z = tpa_next_partition (tpa, y);
        z != TPA_NONE;
        z = tpa_next_partition (tpa, z))
     {
       tmp = partition_to_var (map, z);

       p2 = var_to_partition (map, tmp);
       if (debug)
  {
    fprintf (debug, "Coalesce : ");
    print_generic_expr (debug, var, TDF_SLIM);
    fprintf (debug, " &");
    print_generic_expr (debug, tmp, TDF_SLIM);
    fprintf (debug, "  (%d ,%d)", p1, p2);
  }


       if (tmp == var)
         {
    tpa_remove_partition (tpa, x, z);
    if (debug)
      fprintf (debug, ": Already coalesced\n");
  }
       else
  if (!conflict_graph_conflict_p (graph, p1, p2))
    {
      int v;
      if (tpa_find_tree (tpa, y) == TPA_NONE
   || tpa_find_tree (tpa, z) == TPA_NONE)
        {
   if (debug)
     fprintf (debug, ": Fail non-TPA member\n");
   continue;
        }
      if ((v = var_union (map, var, tmp)) == NO_PARTITION)
        {
   if (debug)
     fprintf (debug, ": Fail cannot combine partitions\n");
   continue;
        }

      tpa_remove_partition (tpa, x, z);
      if (v == p1)
        conflict_graph_merge_regs (graph, v, z);
      else
        {

   conflict_graph_merge_regs (graph, v, y);
   p1 = v;
        }



      var = partition_to_var (map, p1);

      if (debug)
        fprintf (debug, ": Success -> %d\n", v);
    }
  else
    if (debug)
      fprintf (debug, ": Fail, Conflict\n");
     }
 }
    }
}
