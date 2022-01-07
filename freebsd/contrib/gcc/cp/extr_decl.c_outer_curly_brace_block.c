
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BLOCK_SUBBLOCKS (int ) ;
 int DECL_INITIAL (int ) ;
 scalar_t__ FUNCTION_NEEDS_BODY_BLOCK (int ) ;
 int current_function_decl ;

__attribute__((used)) static tree
outer_curly_brace_block (tree fndecl)
{
  tree block = BLOCK_SUBBLOCKS (DECL_INITIAL (fndecl));
  if (FUNCTION_NEEDS_BODY_BLOCK (current_function_decl))

    block = BLOCK_SUBBLOCKS (block);
  return block;
}
