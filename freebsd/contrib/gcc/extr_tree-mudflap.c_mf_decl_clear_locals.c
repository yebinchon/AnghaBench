
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* NULL_TREE ;
 void* mf_cache_mask_decl_l ;
 void* mf_cache_shift_decl_l ;

__attribute__((used)) static void
mf_decl_clear_locals (void)
{

  mf_cache_shift_decl_l = NULL_TREE;
  mf_cache_mask_decl_l = NULL_TREE;
}
