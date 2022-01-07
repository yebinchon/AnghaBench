
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int build_cxx_call (int ,int ) ;
 int build_function_type (int ,int ) ;
 int build_reference_type (int ) ;
 int const_type_info_type_node ;
 int get_global_value_if_present (int ,int *) ;
 int get_identifier (char*) ;
 int push_throw_library_fn (int ,int ) ;
 int void_list_node ;

__attribute__((used)) static tree
throw_bad_typeid (void)
{
  tree fn = get_identifier ("__cxa_bad_typeid");
  if (!get_global_value_if_present (fn, &fn))
    {
      tree t;

      t = build_reference_type (const_type_info_type_node);
      t = build_function_type (t, void_list_node);
      fn = push_throw_library_fn (fn, t);
    }

  return build_cxx_call (fn, NULL_TREE);
}
