
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* walk_use_def_chains_fn ) (int ,int ,void*) ;
typedef int tree ;
struct pointer_set_t {int dummy; } ;


 scalar_t__ PHI_NODE ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int gcc_assert (int) ;
 struct pointer_set_t* pointer_set_create () ;
 int pointer_set_destroy (struct pointer_set_t*) ;
 int stub1 (int ,int ,void*) ;
 int walk_use_def_chains_1 (int ,int (*) (int ,int ,void*),void*,struct pointer_set_t*,int) ;

void
walk_use_def_chains (tree var, walk_use_def_chains_fn fn, void *data,
                     bool is_dfs)
{
  tree def_stmt;

  gcc_assert (TREE_CODE (var) == SSA_NAME);

  def_stmt = SSA_NAME_DEF_STMT (var);



  if (TREE_CODE (def_stmt) != PHI_NODE)
    (*fn) (var, def_stmt, data);
  else
    {
      struct pointer_set_t *visited = pointer_set_create ();
      walk_use_def_chains_1 (var, fn, data, visited, is_dfs);
      pointer_set_destroy (visited);
    }
}
