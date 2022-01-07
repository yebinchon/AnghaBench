
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int tree ;
struct tree_niter_desc {void* niter; int cmp; void* bound; void* additional_info; int may_be_zero; void* assumptions; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_11__ {int no_overflow; int base; void* step; } ;
typedef TYPE_1__ affine_iv ;


 int ERROR_MARK ;
 int GE_EXPR ;
 int GT_EXPR ;


 int MINUS_EXPR ;

 void* NULL_TREE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 int SWAP (TYPE_1__*,TYPE_1__*) ;
 int boolean_false_node ;
 void* boolean_true_node ;
 int boolean_type_node ;
 void* build_int_cst (int ,int ) ;
 void* fold_binary_to_constant (int ,int ,void*,void*) ;
 void* fold_build2 (int,int ,int ,int ) ;
 int gcc_assert (scalar_t__) ;
 int gcc_unreachable () ;
 int number_of_iterations_le (int ,TYPE_1__*,TYPE_1__*,struct tree_niter_desc*,int) ;
 int number_of_iterations_lt (int ,TYPE_1__*,TYPE_1__*,struct tree_niter_desc*,int) ;
 int number_of_iterations_ne (int ,TYPE_1__*,int ,struct tree_niter_desc*,int) ;
 int swap_tree_comparison (int) ;
 scalar_t__ tree_int_cst_sign_bit (void*) ;
 int unsigned_type_for (int ) ;
 scalar_t__ zero_p (void*) ;

__attribute__((used)) static bool
number_of_iterations_cond (tree type, affine_iv *iv0, enum tree_code code,
      affine_iv *iv1, struct tree_niter_desc *niter,
      bool only_exit)
{
  bool never_infinite;






  niter->assumptions = boolean_true_node;
  niter->may_be_zero = boolean_false_node;
  niter->niter = NULL_TREE;
  niter->additional_info = boolean_true_node;

  niter->bound = NULL_TREE;
  niter->cmp = ERROR_MARK;



  if (code == GE_EXPR || code == GT_EXPR
      || (code == 128 && zero_p (iv0->step)))
    {
      SWAP (iv0, iv1);
      code = swap_tree_comparison (code);
    }

  if (!only_exit)
    {
      iv0->no_overflow = 0;
      iv1->no_overflow = 0;
    }

  if (POINTER_TYPE_P (type))
    {
      iv0->no_overflow = 1;
      iv1->no_overflow = 1;
    }



  if (!zero_p (iv0->step) && iv0->no_overflow)
    never_infinite = 1;
  else if (!zero_p (iv1->step) && iv1->no_overflow)
    never_infinite = 1;
  else
    never_infinite = 0;




  if (!zero_p (iv0->step) && !zero_p (iv1->step))
    {
      if (code != 128)
 return 0;

      iv0->step = fold_binary_to_constant (MINUS_EXPR, type,
        iv0->step, iv1->step);
      iv0->no_overflow = 0;
      iv1->step = NULL_TREE;
      iv1->no_overflow = 1;
    }




  if (zero_p (iv0->step) && zero_p (iv1->step))
    return 0;


  if (code != 128)
    {
      if (iv0->step && tree_int_cst_sign_bit (iv0->step))
 return 0;

      if (!zero_p (iv1->step) && !tree_int_cst_sign_bit (iv1->step))
 return 0;
    }


  if (zero_p (fold_build2 (code, boolean_type_node, iv0->base, iv1->base)))
    {
      niter->niter = build_int_cst (unsigned_type_for (type), 0);
      return 1;
    }



  switch (code)
    {
    case 128:
      gcc_assert (zero_p (iv1->step));
      return number_of_iterations_ne (type, iv0, iv1->base, niter, never_infinite);
    case 129:
      return number_of_iterations_lt (type, iv0, iv1, niter, never_infinite);
    case 130:
      return number_of_iterations_le (type, iv0, iv1, niter, never_infinite);
    default:
      gcc_unreachable ();
    }
}
