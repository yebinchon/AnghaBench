
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int build_cxx_call (int ,int ) ;
 int build_function_type (int ,int ) ;
 int get_global_value_if_present (int ,int *) ;
 int get_identifier (char*) ;
 int ptr_type_node ;
 int push_throw_library_fn (int ,int ) ;
 int void_list_node ;

__attribute__((used)) static tree
throw_bad_cast (void)
{
  tree fn = get_identifier ("__cxa_bad_cast");
  if (!get_global_value_if_present (fn, &fn))
    fn = push_throw_library_fn (fn, build_function_type (ptr_type_node,
        void_list_node));

  return build_cxx_call (fn, NULL_TREE);
}
