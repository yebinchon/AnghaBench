
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct ivopts_data {int current_loop; } ;
struct iv_use {int * op_p; int stmt; } ;
struct iv_cand {int dummy; } ;
struct affine_tree_combination {int dummy; } ;
typedef int block_stmt_iterator ;


 int TREE_TYPE (int ) ;
 int bsi_for_stmt (int ) ;
 int copy_ref_info (int ,int ) ;
 int create_mem_ref (int *,int ,struct affine_tree_combination*) ;
 int get_computation_aff (int ,struct iv_use*,struct iv_cand*,int ,struct affine_tree_combination*) ;
 int unshare_aff_combination (struct affine_tree_combination*) ;

__attribute__((used)) static void
rewrite_use_address (struct ivopts_data *data,
       struct iv_use *use, struct iv_cand *cand)
{
  struct affine_tree_combination aff;
  block_stmt_iterator bsi = bsi_for_stmt (use->stmt);
  tree ref;

  get_computation_aff (data->current_loop, use, cand, use->stmt, &aff);
  unshare_aff_combination (&aff);

  ref = create_mem_ref (&bsi, TREE_TYPE (*use->op_p), &aff);
  copy_ref_info (ref, *use->op_p);
  *use->op_p = ref;
}
