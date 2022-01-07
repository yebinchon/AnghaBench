
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_fn_t ;
typedef int tree ;
struct pointer_set_t {int dummy; } ;
struct pair_fn_data {struct pointer_set_t* visited; void* data; int fn; } ;


 scalar_t__ NULL_TREE ;
 int for_each_template_parm_r ;
 struct pointer_set_t* pointer_set_create () ;
 int pointer_set_destroy (struct pointer_set_t*) ;
 scalar_t__ walk_tree (int *,int ,struct pair_fn_data*,struct pointer_set_t*) ;

__attribute__((used)) static int
for_each_template_parm (tree t, tree_fn_t fn, void* data,
   struct pointer_set_t *visited)
{
  struct pair_fn_data pfd;
  int result;


  pfd.fn = fn;
  pfd.data = data;






  if (visited)
    pfd.visited = visited;
  else
    pfd.visited = pointer_set_create ();
  result = walk_tree (&t,
        for_each_template_parm_r,
        &pfd,
        pfd.visited) != NULL_TREE;


  if (!visited)
    {
      pointer_set_destroy (pfd.visited);
      pfd.visited = 0;
    }

  return result;
}
