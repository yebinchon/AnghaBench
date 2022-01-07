
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int decl; } ;


 int AGGREGATE_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 int add_stack_var_conflict (size_t,size_t) ;
 int aggregate_contains_union_type (int ) ;
 int objects_must_conflict_p (int ,int ) ;
 TYPE_1__* stack_vars ;
 size_t stack_vars_num ;

__attribute__((used)) static void
add_alias_set_conflicts (void)
{
  size_t i, j, n = stack_vars_num;

  for (i = 0; i < n; ++i)
    {
      tree type_i = TREE_TYPE (stack_vars[i].decl);
      bool aggr_i = AGGREGATE_TYPE_P (type_i);
      bool contains_union;

      contains_union = aggregate_contains_union_type (type_i);
      for (j = 0; j < i; ++j)
 {
   tree type_j = TREE_TYPE (stack_vars[j].decl);
   bool aggr_j = AGGREGATE_TYPE_P (type_j);
   if (aggr_i != aggr_j


       || !objects_must_conflict_p (type_i, type_j)





       || contains_union)
     add_stack_var_conflict (i, j);
 }
    }
}
