
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 void* build_fn_decl (char*,int ) ;
 int build_function_type_list (int ,int ,scalar_t__,int ,...) ;
 int build_pointer_type (scalar_t__) ;
 scalar_t__ gcov_type_node ;
 scalar_t__ get_gcov_type () ;
 int integer_type_node ;
 void* tree_interval_profiler_fn ;
 void* tree_one_value_profiler_fn ;
 void* tree_pow2_profiler_fn ;
 int unsigned_type_node ;
 int void_type_node ;

__attribute__((used)) static void
tree_init_edge_profiler (void)
{
  tree interval_profiler_fn_type;
  tree pow2_profiler_fn_type;
  tree one_value_profiler_fn_type;
  tree gcov_type_ptr;

  if (!gcov_type_node)
    {
      gcov_type_node = get_gcov_type ();
      gcov_type_ptr = build_pointer_type (gcov_type_node);


      interval_profiler_fn_type
       = build_function_type_list (void_type_node,
       gcov_type_ptr, gcov_type_node,
       integer_type_node,
       unsigned_type_node, NULL_TREE);
      tree_interval_profiler_fn
       = build_fn_decl ("__gcov_interval_profiler",
         interval_profiler_fn_type);


      pow2_profiler_fn_type
       = build_function_type_list (void_type_node,
       gcov_type_ptr, gcov_type_node,
       NULL_TREE);
      tree_pow2_profiler_fn = build_fn_decl ("__gcov_pow2_profiler",
         pow2_profiler_fn_type);


      one_value_profiler_fn_type
       = build_function_type_list (void_type_node,
       gcov_type_ptr, gcov_type_node,
       NULL_TREE);
      tree_one_value_profiler_fn
       = build_fn_decl ("__gcov_one_value_profiler",
         one_value_profiler_fn_type);
    }
}
