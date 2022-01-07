
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int var_map ;
typedef TYPE_1__* var_ann_t ;
typedef scalar_t__ tree ;
typedef int root_var_p ;
struct TYPE_3__ {int out_of_ssa_tag; } ;


 int ROOT_VAR_NONE ;
 scalar_t__ SSA_NAME ;
 int TDF_DETAILS ;
 int TDF_SLIM ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int change_partition_var (int ,scalar_t__,int) ;
 scalar_t__ create_temp (scalar_t__) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,...) ;
 int num_var_partitions (int ) ;
 scalar_t__ partition_to_var (int ,int) ;
 int print_exprs (scalar_t__,char*,scalar_t__,char*,scalar_t__,char*) ;
 int print_generic_expr (scalar_t__,scalar_t__,int ) ;
 scalar_t__ root_var (int ,int) ;
 int root_var_delete (int ) ;
 int root_var_first_partition (int ,int) ;
 int root_var_init (int ) ;
 int root_var_next_partition (int ,int) ;
 int root_var_num (int ) ;
 TYPE_1__* var_ann (scalar_t__) ;
 int var_to_partition (int ,scalar_t__) ;

__attribute__((used)) static void
assign_vars (var_map map)
{
  int x, i, num, rep;
  tree t, var;
  var_ann_t ann;
  root_var_p rv;

  rv = root_var_init (map);
  if (!rv)
    return;




  num = num_var_partitions (map);
  for (x = 0; x < num; x++)
    {
      var = partition_to_var (map, x);
      if (TREE_CODE (var) != SSA_NAME)
 {



   ann = var_ann (var);
   ann->out_of_ssa_tag = 1;
   if (dump_file && (dump_flags & TDF_DETAILS))
     {
       fprintf (dump_file, "partition %d has variable ", x);
       print_generic_expr (dump_file, var, TDF_SLIM);
       fprintf (dump_file, " assigned to it.\n");
     }

 }
    }

  num = root_var_num (rv);
  for (x = 0; x < num; x++)
    {
      var = root_var (rv, x);
      ann = var_ann (var);
      for (i = root_var_first_partition (rv, x);
    i != ROOT_VAR_NONE;
    i = root_var_next_partition (rv, i))
 {
   t = partition_to_var (map, i);

   if (t == var || TREE_CODE (t) != SSA_NAME)
     continue;

   rep = var_to_partition (map, t);

   if (!ann->out_of_ssa_tag)
     {
       if (dump_file && (dump_flags & TDF_DETAILS))
  print_exprs (dump_file, "", t, "  --> ", var, "\n");
       change_partition_var (map, var, rep);
       continue;
     }

   if (dump_file && (dump_flags & TDF_DETAILS))
     print_exprs (dump_file, "", t, " not coalesced with ", var,
    "");

   var = create_temp (t);
   change_partition_var (map, var, rep);
   ann = var_ann (var);

   if (dump_file && (dump_flags & TDF_DETAILS))
     {
       fprintf (dump_file, " -->  New temp:  '");
       print_generic_expr (dump_file, var, TDF_SLIM);
       fprintf (dump_file, "'\n");
     }
 }
    }

  root_var_delete (rv);
}
