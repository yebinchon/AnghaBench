
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {int (* use_aeabi_atexit ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;


 int NULL_TREE ;
 scalar_t__ atexit_node ;
 scalar_t__ build_function_type (int ,scalar_t__) ;
 scalar_t__ build_library_fn_ptr (char const*,scalar_t__) ;
 scalar_t__ build_pointer_type (scalar_t__) ;
 scalar_t__ decay_conversion (scalar_t__) ;
 scalar_t__ flag_use_cxa_atexit ;
 int integer_type_node ;
 int lang_name_c ;
 int mark_used (scalar_t__) ;
 int pop_lang_context () ;
 scalar_t__ ptr_type_node ;
 int push_lang_context (int ) ;
 int stub1 () ;
 TYPE_2__ targetm ;
 scalar_t__ tree_cons (int ,scalar_t__,scalar_t__) ;
 scalar_t__ void_list_node ;
 int void_type_node ;

__attribute__((used)) static tree
get_atexit_node (void)
{
  tree atexit_fndecl;
  tree arg_types;
  tree fn_type;
  tree fn_ptr_type;
  const char *name;
  bool use_aeabi_atexit;

  if (atexit_node)
    return atexit_node;

  if (flag_use_cxa_atexit)
    {







      use_aeabi_atexit = targetm.cxx.use_aeabi_atexit ();


      arg_types = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
      fn_type = build_function_type (void_type_node, arg_types);
      fn_ptr_type = build_pointer_type (fn_type);

      arg_types = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
      if (use_aeabi_atexit)
 {
   arg_types = tree_cons (NULL_TREE, fn_ptr_type, arg_types);
   arg_types = tree_cons (NULL_TREE, ptr_type_node, arg_types);
 }
      else
 {
   arg_types = tree_cons (NULL_TREE, ptr_type_node, arg_types);
   arg_types = tree_cons (NULL_TREE, fn_ptr_type, arg_types);
 }

      fn_type = build_function_type (integer_type_node, arg_types);
      fn_ptr_type = build_pointer_type (fn_type);
      if (use_aeabi_atexit)
 name = "__aeabi_atexit";
      else
 name = "__cxa_atexit";
    }
  else
    {






      fn_type = build_function_type (void_type_node, void_list_node);
      fn_ptr_type = build_pointer_type (fn_type);
      arg_types = tree_cons (NULL_TREE, fn_ptr_type, void_list_node);

      fn_type = build_function_type (integer_type_node, arg_types);
      name = "atexit";
    }


  push_lang_context (lang_name_c);
  atexit_fndecl = build_library_fn_ptr (name, fn_type);
  mark_used (atexit_fndecl);
  pop_lang_context ();
  atexit_node = decay_conversion (atexit_fndecl);

  return atexit_node;
}
