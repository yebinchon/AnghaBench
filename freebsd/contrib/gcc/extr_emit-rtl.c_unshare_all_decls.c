
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BLOCK_SUBBLOCKS (scalar_t__) ;
 scalar_t__ BLOCK_VARS (scalar_t__) ;
 int DECL_RTL (scalar_t__) ;
 scalar_t__ DECL_RTL_SET_P (scalar_t__) ;
 int SET_DECL_RTL (scalar_t__,int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int copy_rtx_if_shared (int ) ;

__attribute__((used)) static void
unshare_all_decls (tree blk)
{
  tree t;


  for (t = BLOCK_VARS (blk); t; t = TREE_CHAIN (t))
    if (DECL_RTL_SET_P (t))
      SET_DECL_RTL (t, copy_rtx_if_shared (DECL_RTL (t)));


  for (t = BLOCK_SUBBLOCKS (blk); t; t = TREE_CHAIN (t))
    unshare_all_decls (t);
}
