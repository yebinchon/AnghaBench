
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int BLKmode ;
 int BLOCK_OP_NORMAL ;
 int GEN_INT (int ) ;
 int INITIALIZE_TRAMPOLINE (int ,int ,int ) ;
 int NULL_RTX ;
 int POINTER_TYPE ;
 int TRAMPOLINE_ALIGNMENT ;
 int TRAMPOLINE_SIZE ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int assemble_trampoline_template () ;
 int const0_rtx ;
 int emit_block_move (int ,int ,int ,int ) ;
 int expand_normal (int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int round_trampoline_addr (int ) ;
 int set_mem_align (int ,int ) ;
 int trampolines_created ;
 int validate_arglist (int ,int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_init_trampoline (tree arglist)
{
  tree t_tramp, t_func, t_chain;
  rtx r_tramp, r_func, r_chain;




  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE,
    POINTER_TYPE, VOID_TYPE))
    return NULL_RTX;

  t_tramp = TREE_VALUE (arglist);
  arglist = TREE_CHAIN (arglist);
  t_func = TREE_VALUE (arglist);
  arglist = TREE_CHAIN (arglist);
  t_chain = TREE_VALUE (arglist);

  r_tramp = expand_normal (t_tramp);
  r_func = expand_normal (t_func);
  r_chain = expand_normal (t_chain);


  r_tramp = round_trampoline_addr (r_tramp);






  trampolines_created = 1;
  INITIALIZE_TRAMPOLINE (r_tramp, r_func, r_chain);

  return const0_rtx;
}
