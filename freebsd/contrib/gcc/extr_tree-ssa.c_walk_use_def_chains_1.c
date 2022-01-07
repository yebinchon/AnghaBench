
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* walk_use_def_chains_fn ) (int ,int ,void*) ;
typedef int tree ;
struct pointer_set_t {int dummy; } ;


 int PHI_ARG_DEF (int ,int) ;
 scalar_t__ PHI_NODE ;
 int PHI_NUM_ARGS (int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ pointer_set_insert (struct pointer_set_t*,int ) ;

__attribute__((used)) static bool
walk_use_def_chains_1 (tree var, walk_use_def_chains_fn fn, void *data,
         struct pointer_set_t *visited, bool is_dfs)
{
  tree def_stmt;

  if (pointer_set_insert (visited, var))
    return 0;

  def_stmt = SSA_NAME_DEF_STMT (var);

  if (TREE_CODE (def_stmt) != PHI_NODE)
    {

      return fn (var, def_stmt, data);
    }
  else
    {
      int i;



      if (!is_dfs)
 for (i = 0; i < PHI_NUM_ARGS (def_stmt); i++)
   if (fn (PHI_ARG_DEF (def_stmt, i), def_stmt, data))
     return 1;


      for (i = 0; i < PHI_NUM_ARGS (def_stmt); i++)
 {
   tree arg = PHI_ARG_DEF (def_stmt, i);
   if (TREE_CODE (arg) == SSA_NAME
       && walk_use_def_chains_1 (arg, fn, data, visited, is_dfs))
     return 1;
 }



      if (is_dfs)
 for (i = 0; i < PHI_NUM_ARGS (def_stmt); i++)
   if (fn (PHI_ARG_DEF (def_stmt, i), def_stmt, data))
     return 1;
    }

  return 0;
}
