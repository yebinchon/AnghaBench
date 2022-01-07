
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
struct TYPE_3__ {int * (* type_for_mode ) (int,int ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int BUILT_IN_ADJUST_TRAMPOLINE ;
 size_t BUILT_IN_ALLOCA ;
 int BUILT_IN_COMPLEX_DIV_MIN ;
 int BUILT_IN_COMPLEX_MUL_MIN ;
 int BUILT_IN_INIT_TRAMPOLINE ;
 size_t BUILT_IN_MEMCMP ;
 size_t BUILT_IN_MEMCPY ;
 size_t BUILT_IN_MEMMOVE ;
 size_t BUILT_IN_MEMSET ;
 int BUILT_IN_NONLOCAL_GOTO ;
 int BUILT_IN_PROFILE_FUNC_ENTER ;
 int BUILT_IN_PROFILE_FUNC_EXIT ;
 int BUILT_IN_SETJMP_DISPATCHER ;
 int BUILT_IN_SETJMP_RECEIVER ;
 int BUILT_IN_SETJMP_SETUP ;
 int BUILT_IN_STACK_RESTORE ;
 int BUILT_IN_STACK_SAVE ;
 int ECF_CONST ;
 int ECF_MALLOC ;
 int ECF_NORETURN ;
 int ECF_NOTHROW ;
 int ECF_PURE ;
 char* GET_MODE_NAME (int) ;
 int MAX_MODE_COMPLEX_FLOAT ;
 int MIN_MODE_COMPLEX_FLOAT ;
 int NULL_TREE ;
 char TOLOWER (char const) ;
 int * TREE_TYPE (int *) ;
 int * build_function_type (int *,int *) ;
 int ** built_in_decls ;
 char** built_in_names ;
 char* concat (char*,char*,char*,int *) ;
 int * const_ptr_type_node ;
 int * integer_type_node ;
 TYPE_2__ lang_hooks ;
 int local_define_builtin (char*,int *,int,char*,int) ;
 int * ptr_type_node ;
 int * size_type_node ;
 int * stub1 (int,int ) ;
 int * tree_cons (int ,int *,int *) ;
 int * void_list_node ;
 int * void_type_node ;

void
build_common_builtin_nodes (void)
{
  tree tmp, ftype;

  if (built_in_decls[BUILT_IN_MEMCPY] == ((void*)0)
      || built_in_decls[BUILT_IN_MEMMOVE] == ((void*)0))
    {
      tmp = tree_cons (NULL_TREE, size_type_node, void_list_node);
      tmp = tree_cons (NULL_TREE, const_ptr_type_node, tmp);
      tmp = tree_cons (NULL_TREE, ptr_type_node, tmp);
      ftype = build_function_type (ptr_type_node, tmp);

      if (built_in_decls[BUILT_IN_MEMCPY] == ((void*)0))
 local_define_builtin ("__builtin_memcpy", ftype, BUILT_IN_MEMCPY,
         "memcpy", ECF_NOTHROW);
      if (built_in_decls[BUILT_IN_MEMMOVE] == ((void*)0))
 local_define_builtin ("__builtin_memmove", ftype, BUILT_IN_MEMMOVE,
         "memmove", ECF_NOTHROW);
    }

  if (built_in_decls[BUILT_IN_MEMCMP] == ((void*)0))
    {
      tmp = tree_cons (NULL_TREE, size_type_node, void_list_node);
      tmp = tree_cons (NULL_TREE, const_ptr_type_node, tmp);
      tmp = tree_cons (NULL_TREE, const_ptr_type_node, tmp);
      ftype = build_function_type (integer_type_node, tmp);
      local_define_builtin ("__builtin_memcmp", ftype, BUILT_IN_MEMCMP,
       "memcmp", ECF_PURE | ECF_NOTHROW);
    }

  if (built_in_decls[BUILT_IN_MEMSET] == ((void*)0))
    {
      tmp = tree_cons (NULL_TREE, size_type_node, void_list_node);
      tmp = tree_cons (NULL_TREE, integer_type_node, tmp);
      tmp = tree_cons (NULL_TREE, ptr_type_node, tmp);
      ftype = build_function_type (ptr_type_node, tmp);
      local_define_builtin ("__builtin_memset", ftype, BUILT_IN_MEMSET,
       "memset", ECF_NOTHROW);
    }

  if (built_in_decls[BUILT_IN_ALLOCA] == ((void*)0))
    {
      tmp = tree_cons (NULL_TREE, size_type_node, void_list_node);
      ftype = build_function_type (ptr_type_node, tmp);
      local_define_builtin ("__builtin_alloca", ftype, BUILT_IN_ALLOCA,
       "alloca", ECF_NOTHROW | ECF_MALLOC);
    }

  tmp = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
  tmp = tree_cons (NULL_TREE, ptr_type_node, tmp);
  tmp = tree_cons (NULL_TREE, ptr_type_node, tmp);
  ftype = build_function_type (void_type_node, tmp);
  local_define_builtin ("__builtin_init_trampoline", ftype,
   BUILT_IN_INIT_TRAMPOLINE,
   "__builtin_init_trampoline", ECF_NOTHROW);

  tmp = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
  ftype = build_function_type (ptr_type_node, tmp);
  local_define_builtin ("__builtin_adjust_trampoline", ftype,
   BUILT_IN_ADJUST_TRAMPOLINE,
   "__builtin_adjust_trampoline",
   ECF_CONST | ECF_NOTHROW);

  tmp = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
  tmp = tree_cons (NULL_TREE, ptr_type_node, tmp);
  ftype = build_function_type (void_type_node, tmp);
  local_define_builtin ("__builtin_nonlocal_goto", ftype,
   BUILT_IN_NONLOCAL_GOTO,
   "__builtin_nonlocal_goto",
   ECF_NORETURN | ECF_NOTHROW);

  tmp = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
  tmp = tree_cons (NULL_TREE, ptr_type_node, tmp);
  ftype = build_function_type (void_type_node, tmp);
  local_define_builtin ("__builtin_setjmp_setup", ftype,
   BUILT_IN_SETJMP_SETUP,
   "__builtin_setjmp_setup", ECF_NOTHROW);

  tmp = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
  ftype = build_function_type (ptr_type_node, tmp);
  local_define_builtin ("__builtin_setjmp_dispatcher", ftype,
   BUILT_IN_SETJMP_DISPATCHER,
   "__builtin_setjmp_dispatcher",
   ECF_PURE | ECF_NOTHROW);

  tmp = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
  ftype = build_function_type (void_type_node, tmp);
  local_define_builtin ("__builtin_setjmp_receiver", ftype,
   BUILT_IN_SETJMP_RECEIVER,
   "__builtin_setjmp_receiver", ECF_NOTHROW);

  ftype = build_function_type (ptr_type_node, void_list_node);
  local_define_builtin ("__builtin_stack_save", ftype, BUILT_IN_STACK_SAVE,
   "__builtin_stack_save", ECF_NOTHROW);

  tmp = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
  ftype = build_function_type (void_type_node, tmp);
  local_define_builtin ("__builtin_stack_restore", ftype,
   BUILT_IN_STACK_RESTORE,
   "__builtin_stack_restore", ECF_NOTHROW);

  ftype = build_function_type (void_type_node, void_list_node);
  local_define_builtin ("__builtin_profile_func_enter", ftype,
   BUILT_IN_PROFILE_FUNC_ENTER, "profile_func_enter", 0);
  local_define_builtin ("__builtin_profile_func_exit", ftype,
   BUILT_IN_PROFILE_FUNC_EXIT, "profile_func_exit", 0);





  {
    enum machine_mode mode;

    for (mode = MIN_MODE_COMPLEX_FLOAT; mode <= MAX_MODE_COMPLEX_FLOAT; ++mode)
      {
 char mode_name_buf[4], *q;
 const char *p;
 enum built_in_function mcode, dcode;
 tree type, inner_type;

 type = lang_hooks.types.type_for_mode (mode, 0);
 if (type == ((void*)0))
   continue;
 inner_type = TREE_TYPE (type);

 tmp = tree_cons (NULL_TREE, inner_type, void_list_node);
 tmp = tree_cons (NULL_TREE, inner_type, tmp);
 tmp = tree_cons (NULL_TREE, inner_type, tmp);
 tmp = tree_cons (NULL_TREE, inner_type, tmp);
 ftype = build_function_type (type, tmp);

        mcode = BUILT_IN_COMPLEX_MUL_MIN + mode - MIN_MODE_COMPLEX_FLOAT;
        dcode = BUILT_IN_COMPLEX_DIV_MIN + mode - MIN_MODE_COMPLEX_FLOAT;

        for (p = GET_MODE_NAME (mode), q = mode_name_buf; *p; p++, q++)
   *q = TOLOWER (*p);
 *q = '\0';

 built_in_names[mcode] = concat ("__mul", mode_name_buf, "3", ((void*)0));
        local_define_builtin (built_in_names[mcode], ftype, mcode,
         built_in_names[mcode], ECF_CONST | ECF_NOTHROW);

 built_in_names[dcode] = concat ("__div", mode_name_buf, "3", ((void*)0));
        local_define_builtin (built_in_names[dcode], ftype, dcode,
         built_in_names[dcode], ECF_CONST | ECF_NOTHROW);
      }
  }
}
