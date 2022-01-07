
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int iv_candidates; int iv_uses; int niters; int important_candidates; int relevant; int version_info; } ;


 int BITMAP_FREE (int ) ;
 int VEC_free (int ,int ,int ) ;
 int decl_rtl_to_reset ;
 int free (int ) ;
 int free_loop_data (struct ivopts_data*) ;
 int heap ;
 int htab_delete (int ) ;
 int iv_cand_p ;
 int iv_use_p ;
 int tree ;

__attribute__((used)) static void
tree_ssa_iv_optimize_finalize (struct ivopts_data *data)
{
  free_loop_data (data);
  free (data->version_info);
  BITMAP_FREE (data->relevant);
  BITMAP_FREE (data->important_candidates);
  htab_delete (data->niters);

  VEC_free (tree, heap, decl_rtl_to_reset);
  VEC_free (iv_use_p, heap, data->iv_uses);
  VEC_free (iv_cand_p, heap, data->iv_candidates);
}
