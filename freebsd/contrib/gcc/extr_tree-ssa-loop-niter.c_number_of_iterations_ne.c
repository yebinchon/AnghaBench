
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_3__ {void* step; void* base; } ;
struct tree_niter_desc {void* assumptions; void* niter; int cmp; void* bound; TYPE_1__ control; } ;
typedef TYPE_1__ affine_iv ;


 int BIT_AND_EXPR ;
 int EQ_EXPR ;
 int EXACT_DIV_EXPR ;
 int FLOOR_MOD_EXPR ;
 int LSHIFT_EXPR ;
 int MINUS_EXPR ;
 int MULT_EXPR ;
 int NEGATE_EXPR ;
 int NE_EXPR ;
 int RSHIFT_EXPR ;
 int TRUTH_AND_EXPR ;
 scalar_t__ TYPE_PRECISION (void*) ;
 void* boolean_type_node ;
 void* build_int_cst (void*,int) ;
 void* build_low_bits_mask (void*,scalar_t__) ;
 void* fold_binary_to_constant (int ,void*,void*,void*) ;
 void* fold_build1 (int ,void*,void*) ;
 void* fold_build2 (int ,void*,void*,void*) ;
 void* fold_convert (void*,void*) ;
 scalar_t__ integer_onep (void*) ;
 void* inverse (void*,void*) ;
 int nonzero_p (void*) ;
 void* num_ending_zeros (void*) ;
 scalar_t__ tree_int_cst_sign_bit (void*) ;
 scalar_t__ tree_low_cst (void*,int) ;
 void* unsigned_type_for (void*) ;

__attribute__((used)) static bool
number_of_iterations_ne (tree type, affine_iv *iv, tree final,
    struct tree_niter_desc *niter, bool never_infinite)
{
  tree niter_type = unsigned_type_for (type);
  tree s, c, d, bits, assumption, tmp, bound;

  niter->control = *iv;
  niter->bound = final;
  niter->cmp = NE_EXPR;



  if (tree_int_cst_sign_bit (iv->step))
    {
      s = fold_convert (niter_type,
   fold_build1 (NEGATE_EXPR, type, iv->step));
      c = fold_build2 (MINUS_EXPR, niter_type,
         fold_convert (niter_type, iv->base),
         fold_convert (niter_type, final));
    }
  else
    {
      s = fold_convert (niter_type, iv->step);
      c = fold_build2 (MINUS_EXPR, niter_type,
         fold_convert (niter_type, final),
         fold_convert (niter_type, iv->base));
    }


  if (integer_onep (s))
    {
      niter->niter = c;
      return 1;
    }




  bits = num_ending_zeros (s);
  bound = build_low_bits_mask (niter_type,
          (TYPE_PRECISION (niter_type)
    - tree_low_cst (bits, 1)));

  d = fold_binary_to_constant (LSHIFT_EXPR, niter_type,
          build_int_cst (niter_type, 1), bits);
  s = fold_binary_to_constant (RSHIFT_EXPR, niter_type, s, bits);

  if (!never_infinite)
    {


      assumption = fold_build2 (FLOOR_MOD_EXPR, niter_type, c, d);
      assumption = fold_build2 (EQ_EXPR, boolean_type_node,
    assumption, build_int_cst (niter_type, 0));
      if (!nonzero_p (assumption))
 niter->assumptions = fold_build2 (TRUTH_AND_EXPR, boolean_type_node,
       niter->assumptions, assumption);
    }

  c = fold_build2 (EXACT_DIV_EXPR, niter_type, c, d);
  tmp = fold_build2 (MULT_EXPR, niter_type, c, inverse (s, bound));
  niter->niter = fold_build2 (BIT_AND_EXPR, niter_type, tmp, bound);
  return 1;
}
