
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct block_sema_info {int block_body; scalar_t__ block_byref_decl_list; scalar_t__ block_ref_decl_list; } ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int declare_block_prologue_local_vars (scalar_t__,int ,int ) ;
 int gcc_assert (scalar_t__) ;
 int get_identifier (char*) ;
 scalar_t__ lookup_name (int ) ;

void
block_build_prologue (struct block_sema_info *block_impl)
{
  tree chain;

  tree self_parm = lookup_name (get_identifier (".block_descriptor"));
  gcc_assert (self_parm);

  for (chain = block_impl->block_ref_decl_list; chain;
 chain = TREE_CHAIN (chain))
    declare_block_prologue_local_vars (self_parm, TREE_VALUE (chain),
           block_impl->block_body);

  for (chain = block_impl->block_byref_decl_list; chain;
 chain = TREE_CHAIN (chain))
    declare_block_prologue_local_vars (self_parm, TREE_VALUE (chain),
           block_impl->block_body);
}
