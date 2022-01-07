
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* var_map ;
typedef TYPE_2__* var_ann_t ;
typedef scalar_t__ tree ;
struct TYPE_10__ {int (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_9__ {scalar_t__ symbol_mem_tag; } ;
struct TYPE_8__ {int var_partition; } ;
typedef int FILE ;


 scalar_t__ DECL_FROM_INLINE (scalar_t__) ;
 scalar_t__ DECL_IGNORED_P (scalar_t__) ;
 int NO_PARTITION ;
 scalar_t__ PARM_DECL ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ RESULT_DECL ;
 scalar_t__ SSA_NAME ;
 scalar_t__ SSA_NAME_OCCURS_IN_ABNORMAL_PHI (scalar_t__) ;
 scalar_t__ SSA_NAME_VAR (scalar_t__) ;
 int SSA_NAME_VERSION (scalar_t__) ;
 int TDF_SLIM ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ default_def (scalar_t__) ;
 int fprintf (int *,char*,...) ;
 int gcc_assert (int) ;
 scalar_t__ get_alias_set (scalar_t__) ;
 TYPE_6__ lang_hooks ;
 int partition_find (int ,int ) ;
 scalar_t__ partition_to_var (TYPE_1__*,int) ;
 int partition_union (int ,int,int) ;
 int print_generic_expr (int *,scalar_t__,int ) ;
 int register_ssa_partition (TYPE_1__*,scalar_t__,int) ;
 int replace_ssa_name_symbol (scalar_t__,scalar_t__) ;
 int stub1 (scalar_t__,scalar_t__) ;
 TYPE_2__* var_ann (scalar_t__) ;

__attribute__((used)) static void
copy_rename_partition_coalesce (var_map map, tree var1, tree var2, FILE *debug)
{
  int p1, p2, p3;
  tree root1, root2;
  tree rep1, rep2;
  var_ann_t ann1, ann2, ann3;
  bool ign1, ign2, abnorm;

  gcc_assert (TREE_CODE (var1) == SSA_NAME);
  gcc_assert (TREE_CODE (var2) == SSA_NAME);

  register_ssa_partition (map, var1, 0);
  register_ssa_partition (map, var2, 1);

  p1 = partition_find (map->var_partition, SSA_NAME_VERSION (var1));
  p2 = partition_find (map->var_partition, SSA_NAME_VERSION (var2));

  if (debug)
    {
      fprintf (debug, "Try : ");
      print_generic_expr (debug, var1, TDF_SLIM);
      fprintf (debug, "(P%d) & ", p1);
      print_generic_expr (debug, var2, TDF_SLIM);
      fprintf (debug, "(P%d)", p2);
    }

  gcc_assert (p1 != NO_PARTITION);
  gcc_assert (p2 != NO_PARTITION);

  rep1 = partition_to_var (map, p1);
  rep2 = partition_to_var (map, p2);
  root1 = SSA_NAME_VAR (rep1);
  root2 = SSA_NAME_VAR (rep2);

  ann1 = var_ann (root1);
  ann2 = var_ann (root2);

  if (p1 == p2)
    {
      if (debug)
 fprintf (debug, " : Already coalesced.\n");
      return;
    }


  abnorm = (SSA_NAME_OCCURS_IN_ABNORMAL_PHI (rep1)
     || SSA_NAME_OCCURS_IN_ABNORMAL_PHI (rep2));
  if (abnorm)
    {
      if (debug)
 fprintf (debug, " : Abnormal PHI barrier.  No coalesce.\n");
      return;
    }


  if (root1 == root2)
    {
      p1 = partition_union (map->var_partition, p1, p2);
      if (debug)
 fprintf (debug, " : Same root, coalesced --> P%d.\n", p1);
      return;
    }


  if (TREE_CODE (root1) == PARM_DECL && TREE_CODE (root2) == PARM_DECL)
    {
      if (debug)
        fprintf (debug, " : 2 different PARM_DECLS. No coalesce.\n");
      return;
    }

  if ((TREE_CODE (root1) == RESULT_DECL) != (TREE_CODE (root2) == RESULT_DECL))
    {
      if (debug)
        fprintf (debug, " : One root a RESULT_DECL. No coalesce.\n");
      return;
    }

  ign1 = TREE_CODE (root1) == VAR_DECL && DECL_IGNORED_P (root1);
  ign2 = TREE_CODE (root2) == VAR_DECL && DECL_IGNORED_P (root2);



  if (!ign1 && !ign2)
    {
      if (DECL_FROM_INLINE (root2))
        ign2 = 1;
      else if (DECL_FROM_INLINE (root1))
 ign1 = 1;
      else
 {
   if (debug)
     fprintf (debug, " : 2 different USER vars. No coalesce.\n");
   return;
 }
    }


  if (ann1->symbol_mem_tag
      && ann2->symbol_mem_tag
      && ann1->symbol_mem_tag != ann2->symbol_mem_tag)
    {
      if (debug)
 fprintf (debug, " : 2 memory tags. No coalesce.\n");
      return;
    }



  if (default_def (root1))
    {
      if (default_def (root2))
 {
   if (debug)
     fprintf (debug, " : 2 default defs. No coalesce.\n");
   return;
 }
      else
        {
   ign2 = 1;
   ign1 = 0;
 }
    }
  else if (default_def (root2))
    {
      ign1 = 1;
      ign2 = 0;
    }


  if (!lang_hooks.types_compatible_p (TREE_TYPE (root1), TREE_TYPE (root2)))
    {
      if (debug)
 fprintf (debug, " : Incompatible types.  No coalesce.\n");
      return;
    }


  if (POINTER_TYPE_P (TREE_TYPE (root1))
      && POINTER_TYPE_P (TREE_TYPE (root2))
      && get_alias_set (TREE_TYPE (TREE_TYPE (root1)))
          != get_alias_set (TREE_TYPE (TREE_TYPE (root2))))
    {
      if (debug)
 fprintf (debug, " : 2 different aliasing sets. No coalesce.\n");
      return;
    }



  p3 = partition_union (map->var_partition, p1, p2);



  if (!ign2)
    replace_ssa_name_symbol (partition_to_var (map, p3), root2);
  else if (!ign1)
    replace_ssa_name_symbol (partition_to_var (map, p3), root1);


  ann3 = var_ann (SSA_NAME_VAR (partition_to_var (map, p3)));
  if (ann1->symbol_mem_tag)
    ann3->symbol_mem_tag = ann1->symbol_mem_tag;
  else
    ann3->symbol_mem_tag = ann2->symbol_mem_tag;

  if (debug)
    {
      fprintf (debug, " --> P%d ", p3);
      print_generic_expr (debug, SSA_NAME_VAR (partition_to_var (map, p3)),
     TDF_SLIM);
      fprintf (debug, "\n");
    }
}
