
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_3__ {void* (* type_for_mode ) (int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int FUNCTION_DECL ;
 int TYPE_QUAL_CONST ;
 int VAR_DECL ;
 void* build_array_type (int ,int ) ;
 void* build_function_type_0 (int ) ;
 void* build_function_type_1 (int ,void*) ;
 void* build_function_type_3 (int ,int ,int ,int ) ;
 void* build_function_type_4 (int ,int ,int ,int ,void*) ;
 void* build_pointer_type (int ) ;
 int build_qualified_type (int ,int ) ;
 int char_type_node ;
 int integer_type_node ;
 TYPE_2__ lang_hooks ;
 void* mf_cache_array_decl ;
 void* mf_cache_mask_decl ;
 void* mf_cache_shift_decl ;
 int mf_cache_struct_type ;
 void* mf_cache_structptr_type ;
 void* mf_check_fndecl ;
 void* mf_init_fndecl ;
 void* mf_make_builtin (int ,char*,void*) ;
 int mf_make_mf_cache_struct_type (void*) ;
 int mf_mark (void*) ;
 void* mf_register_fndecl ;
 void* mf_set_options_fndecl ;
 void* mf_uintptr_type ;
 void* mf_unregister_fndecl ;
 int ptr_mode ;
 int ptr_type_node ;
 int size_type_node ;
 void* stub1 (int ,int) ;
 void* unsigned_char_type_node ;
 int void_type_node ;

void
mudflap_init (void)
{
  static bool done = 0;
  tree mf_const_string_type;
  tree mf_cache_array_type;
  tree mf_check_register_fntype;
  tree mf_unregister_fntype;
  tree mf_init_fntype;
  tree mf_set_options_fntype;

  if (done)
    return;
  done = 1;

  mf_uintptr_type = lang_hooks.types.type_for_mode (ptr_mode,
                                                                  1);
  mf_const_string_type
    = build_pointer_type (build_qualified_type
                          (char_type_node, TYPE_QUAL_CONST));

  mf_cache_struct_type = mf_make_mf_cache_struct_type (mf_uintptr_type);
  mf_cache_structptr_type = build_pointer_type (mf_cache_struct_type);
  mf_cache_array_type = build_array_type (mf_cache_struct_type, 0);
  mf_check_register_fntype =
    build_function_type_4 (void_type_node, ptr_type_node, size_type_node,
                           integer_type_node, mf_const_string_type);
  mf_unregister_fntype =
    build_function_type_3 (void_type_node, ptr_type_node, size_type_node,
                           integer_type_node);
  mf_init_fntype =
    build_function_type_0 (void_type_node);
  mf_set_options_fntype =
    build_function_type_1 (integer_type_node, mf_const_string_type);

  mf_cache_array_decl = mf_make_builtin (VAR_DECL, "__mf_lookup_cache",
                                         mf_cache_array_type);
  mf_cache_shift_decl = mf_make_builtin (VAR_DECL, "__mf_lc_shift",
                                         unsigned_char_type_node);
  mf_cache_mask_decl = mf_make_builtin (VAR_DECL, "__mf_lc_mask",
                                        mf_uintptr_type);


  mf_mark (mf_cache_array_decl);
  mf_mark (mf_cache_shift_decl);
  mf_mark (mf_cache_mask_decl);
  mf_check_fndecl = mf_make_builtin (FUNCTION_DECL, "__mf_check",
                                     mf_check_register_fntype);
  mf_register_fndecl = mf_make_builtin (FUNCTION_DECL, "__mf_register",
                                        mf_check_register_fntype);
  mf_unregister_fndecl = mf_make_builtin (FUNCTION_DECL, "__mf_unregister",
                                          mf_unregister_fntype);
  mf_init_fndecl = mf_make_builtin (FUNCTION_DECL, "__mf_init",
                                    mf_init_fntype);
  mf_set_options_fndecl = mf_make_builtin (FUNCTION_DECL, "__mf_set_options",
                                           mf_set_options_fntype);
}
