
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* tree ;
struct tree_niter_desc {void* assumptions; } ;
struct TYPE_6__ {void* base; void* step; } ;
typedef TYPE_1__ affine_iv ;


 int MINUS_EXPR ;
 int NE_EXPR ;
 int PLUS_EXPR ;
 int TRUTH_AND_EXPR ;
 void* TYPE_MAX_VALUE (void*) ;
 void* TYPE_MIN_VALUE (void*) ;
 void* boolean_type_node ;
 void* build_int_cst (void*,int) ;
 void* fold_build2 (int ,void*,void*,void*) ;
 scalar_t__ nonzero_p (void*) ;
 int number_of_iterations_lt (void*,TYPE_1__*,TYPE_1__*,struct tree_niter_desc*,int) ;
 scalar_t__ zero_p (void*) ;

__attribute__((used)) static bool
number_of_iterations_le (tree type, affine_iv *iv0, affine_iv *iv1,
    struct tree_niter_desc *niter, bool never_infinite)
{
  tree assumption;






  if (!never_infinite)
    {
      if (nonzero_p (iv0->step))
 assumption = fold_build2 (NE_EXPR, boolean_type_node,
      iv1->base, TYPE_MAX_VALUE (type));
      else
 assumption = fold_build2 (NE_EXPR, boolean_type_node,
      iv0->base, TYPE_MIN_VALUE (type));

      if (zero_p (assumption))
 return 0;
      if (!nonzero_p (assumption))
 niter->assumptions = fold_build2 (TRUTH_AND_EXPR, boolean_type_node,
       niter->assumptions, assumption);
    }

  if (nonzero_p (iv0->step))
    iv1->base = fold_build2 (PLUS_EXPR, type,
        iv1->base, build_int_cst (type, 1));
  else
    iv0->base = fold_build2 (MINUS_EXPR, type,
        iv0->base, build_int_cst (type, 1));
  return number_of_iterations_lt (type, iv0, iv1, niter, never_infinite);
}
