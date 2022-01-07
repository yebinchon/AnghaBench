
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct dom_walk_data {int global_data; } ;
typedef int edge ;


 int COND_EXPR ;
 int NE_EXPR ;
 int boolean_type_node ;
 int build2 (int ,int ,int ,int ) ;
 int build3 (int ,int ,int ,int *,int *) ;
 int const_and_copies_stack ;
 int integer_zero_node ;
 int simplify_stmt_for_jump_threading ;
 int thread_across_edge (int ,int ,int,int *,int ) ;
 int void_type_node ;

__attribute__((used)) static void
dom_thread_across_edge (struct dom_walk_data *walk_data, edge e)
{

  if (! walk_data->global_data)
    {
      tree dummy_cond = build2 (NE_EXPR, boolean_type_node,
           integer_zero_node, integer_zero_node);
      dummy_cond = build3 (COND_EXPR, void_type_node, dummy_cond, ((void*)0), ((void*)0));
      walk_data->global_data = dummy_cond;
    }

  thread_across_edge (walk_data->global_data, e, 0,
        &const_and_copies_stack,
        simplify_stmt_for_jump_threading);
}
