
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int build_exc_ptr () ;
 int build_function_call (int ,int ) ;
 int build_function_type (int ,int ) ;
 int get_global_value_if_present (int ,int *) ;
 int get_identifier (char*) ;
 int ptr_type_node ;
 int push_library_fn (int ,int ) ;
 int tree_cons (int ,int ,int ) ;
 int void_list_node ;

__attribute__((used)) static tree
do_get_exception_ptr (void)
{
  tree fn;

  fn = get_identifier ("__cxa_get_exception_ptr");
  if (!get_global_value_if_present (fn, &fn))
    {

      tree tmp = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
      fn = push_library_fn (fn, build_function_type (ptr_type_node, tmp));
    }

  return build_function_call (fn, tree_cons (NULL_TREE, build_exc_ptr (),
          NULL_TREE));
}
