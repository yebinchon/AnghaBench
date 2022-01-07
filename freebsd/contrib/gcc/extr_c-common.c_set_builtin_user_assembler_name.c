
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_MEMCPY ;
 size_t BUILT_IN_MEMSET ;
 scalar_t__ BUILT_IN_NORMAL ;
 scalar_t__ DECL_BUILT_IN_CLASS (int ) ;
 size_t DECL_FUNCTION_CODE (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int * built_in_decls ;
 int gcc_assert (int) ;
 int init_block_clear_fn (char const*) ;
 int init_block_move_fn (char const*) ;
 int set_user_assembler_name (int ,char const*) ;

void
set_builtin_user_assembler_name (tree decl, const char *asmspec)
{
  tree builtin;
  gcc_assert (TREE_CODE (decl) == FUNCTION_DECL
       && DECL_BUILT_IN_CLASS (decl) == BUILT_IN_NORMAL
       && asmspec != 0);

  builtin = built_in_decls [DECL_FUNCTION_CODE (decl)];
  set_user_assembler_name (builtin, asmspec);
  if (DECL_FUNCTION_CODE (decl) == BUILT_IN_MEMCPY)
    init_block_move_fn (asmspec);
  else if (DECL_FUNCTION_CODE (decl) == BUILT_IN_MEMSET)
    init_block_clear_fn (asmspec);
}
