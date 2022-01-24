#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* tree ;
struct TYPE_3__ {void* (* type_for_mode ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNCTION_DECL ; 
 int /*<<< orphan*/  TYPE_QUAL_CONST ; 
 int /*<<< orphan*/  VAR_DECL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  char_type_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 TYPE_2__ lang_hooks ; 
 void* mf_cache_array_decl ; 
 void* mf_cache_mask_decl ; 
 void* mf_cache_shift_decl ; 
 int /*<<< orphan*/  mf_cache_struct_type ; 
 void* mf_cache_structptr_type ; 
 void* mf_check_fndecl ; 
 void* mf_init_fndecl ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* mf_register_fndecl ; 
 void* mf_set_options_fndecl ; 
 void* mf_uintptr_type ; 
 void* mf_unregister_fndecl ; 
 int /*<<< orphan*/  ptr_mode ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  size_type_node ; 
 void* FUNC10 (int /*<<< orphan*/ ,int) ; 
 void* unsigned_char_type_node ; 
 int /*<<< orphan*/  void_type_node ; 

void
FUNC11 (void)
{
  static bool done = false;
  tree mf_const_string_type;
  tree mf_cache_array_type;
  tree mf_check_register_fntype;
  tree mf_unregister_fntype;
  tree mf_init_fntype;
  tree mf_set_options_fntype;

  if (done)
    return;
  done = true;

  mf_uintptr_type = lang_hooks.types.type_for_mode (ptr_mode,
                                                    /*unsignedp=*/true);
  mf_const_string_type
    = FUNC5 (FUNC6
                          (char_type_node, TYPE_QUAL_CONST));

  mf_cache_struct_type = FUNC8 (mf_uintptr_type);
  mf_cache_structptr_type = FUNC5 (mf_cache_struct_type);
  mf_cache_array_type = FUNC0 (mf_cache_struct_type, 0);
  mf_check_register_fntype =
    FUNC4 (void_type_node, ptr_type_node, size_type_node,
                           integer_type_node, mf_const_string_type);
  mf_unregister_fntype =
    FUNC3 (void_type_node, ptr_type_node, size_type_node,
                           integer_type_node);
  mf_init_fntype =
    FUNC1 (void_type_node);
  mf_set_options_fntype =
    FUNC2 (integer_type_node, mf_const_string_type);

  mf_cache_array_decl = FUNC7 (VAR_DECL, "__mf_lookup_cache",
                                         mf_cache_array_type);
  mf_cache_shift_decl = FUNC7 (VAR_DECL, "__mf_lc_shift",
                                         unsigned_char_type_node);
  mf_cache_mask_decl = FUNC7 (VAR_DECL, "__mf_lc_mask",
                                        mf_uintptr_type);
  /* Don't process these in mudflap_enqueue_decl, should they come by
     there for some reason.  */
  FUNC9 (mf_cache_array_decl);
  FUNC9 (mf_cache_shift_decl);
  FUNC9 (mf_cache_mask_decl);
  mf_check_fndecl = FUNC7 (FUNCTION_DECL, "__mf_check",
                                     mf_check_register_fntype);
  mf_register_fndecl = FUNC7 (FUNCTION_DECL, "__mf_register",
                                        mf_check_register_fntype);
  mf_unregister_fndecl = FUNC7 (FUNCTION_DECL, "__mf_unregister",
                                          mf_unregister_fntype);
  mf_init_fndecl = FUNC7 (FUNCTION_DECL, "__mf_init",
                                    mf_init_fntype);
  mf_set_options_fndecl = FUNC7 (FUNCTION_DECL, "__mf_set_options",
                                           mf_set_options_fntype);
}