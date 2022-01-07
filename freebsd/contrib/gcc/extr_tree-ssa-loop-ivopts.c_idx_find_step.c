
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* tree ;
struct loop {int dummy; } ;
struct iv {void* step; void* base; } ;
struct ifs_ivopts_data {void** step_p; int stmt; TYPE_1__* ivopts_data; } ;
struct TYPE_2__ {struct loop* current_loop; } ;


 scalar_t__ ALIGN_INDIRECT_REF ;
 scalar_t__ ARRAY_REF ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ MISALIGNED_INDIRECT_REF ;
 int MULT_EXPR ;
 int PLUS_EXPR ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (void*) ;
 void* array_ref_element_size (void*) ;
 void* array_ref_low_bound (void*) ;
 void* build_int_cst (int ,int) ;
 void* component_ref_field_offset (void*) ;
 int convert_affine_scev (struct loop*,int ,void**,void**,int ,int) ;
 int expr_invariant_in_loop_p (struct loop*,void*) ;
 void* fold_build2 (int ,int ,void*,void*) ;
 struct iv* get_iv (TYPE_1__*,void*) ;
 int sizetype ;

__attribute__((used)) static bool
idx_find_step (tree base, tree *idx, void *data)
{
  struct ifs_ivopts_data *dta = data;
  struct iv *iv;
  tree step, iv_base, iv_step, lbound, off;
  struct loop *loop = dta->ivopts_data->current_loop;

  if (TREE_CODE (base) == MISALIGNED_INDIRECT_REF
      || TREE_CODE (base) == ALIGN_INDIRECT_REF)
    return 0;



  if (TREE_CODE (base) == COMPONENT_REF)
    {
      off = component_ref_field_offset (base);
      return expr_invariant_in_loop_p (loop, off);
    }





  if (TREE_CODE (base) == ARRAY_REF)
    {
      step = array_ref_element_size (base);
      lbound = array_ref_low_bound (base);

      if (!expr_invariant_in_loop_p (loop, step)
   || !expr_invariant_in_loop_p (loop, lbound))
 return 0;
    }

  if (TREE_CODE (*idx) != SSA_NAME)
    return 1;

  iv = get_iv (dta->ivopts_data, *idx);
  if (!iv)
    return 0;




  *idx = iv->base;

  if (!iv->step)
    return 1;

  if (TREE_CODE (base) == ARRAY_REF)
    {
      step = array_ref_element_size (base);


      if (TREE_CODE (step) != INTEGER_CST)
 return 0;
    }
  else

    step = build_int_cst (sizetype, 1);

  iv_base = iv->base;
  iv_step = iv->step;
  if (!convert_affine_scev (dta->ivopts_data->current_loop,
       sizetype, &iv_base, &iv_step, dta->stmt,
       0))
    {

      return 0;
    }

  step = fold_build2 (MULT_EXPR, sizetype, step, iv_step);

  if (!*dta->step_p)
    *dta->step_p = step;
  else
    *dta->step_p = fold_build2 (PLUS_EXPR, sizetype, *dta->step_p, step);

  return 1;
}
