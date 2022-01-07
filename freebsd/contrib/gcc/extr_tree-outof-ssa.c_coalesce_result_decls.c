
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int var_map ;
typedef int * tree ;
typedef int coalesce_list_p ;
struct TYPE_3__ {int frequency; } ;


 TYPE_1__* EXIT_BLOCK_PTR ;
 int * NULL_TREE ;
 scalar_t__ RESULT_DECL ;
 int SSA_NAME_VAR (int *) ;
 scalar_t__ TREE_CODE (int ) ;
 int add_coalesce (int ,unsigned int,unsigned int,int ) ;
 int coalesce_cost (int ,int ,int) ;
 int maybe_hot_bb_p (TYPE_1__*) ;
 unsigned int num_var_partitions (int ) ;
 int * partition_to_var (int ,unsigned int) ;

__attribute__((used)) static void
coalesce_result_decls (var_map map, coalesce_list_p cl)
{
  unsigned int i, x;
  tree var = ((void*)0);

  for (i = x = 0; x < num_var_partitions (map); x++)
    {
      tree p = partition_to_var (map, x);
      if (TREE_CODE (SSA_NAME_VAR (p)) == RESULT_DECL)
 {
   if (var == NULL_TREE)
     {
       var = p;
       i = x;
     }
   else
     add_coalesce (cl, i, x,
     coalesce_cost (EXIT_BLOCK_PTR->frequency,
      maybe_hot_bb_p (EXIT_BLOCK_PTR),
      0));
 }
    }
}
