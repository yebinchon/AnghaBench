
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int (* signed_type ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int LSHIFT_EXPR ;
 int RSHIFT_EXPR ;
 int TREE_TYPE (int ) ;
 unsigned int TYPE_PRECISION (int ) ;
 int build_int_cst (int ,int) ;
 int const_binop (int ,int ,int ,int ) ;
 int force_fit_type (int ,int ,int,int) ;
 TYPE_2__ lang_hooks ;
 int size_int (unsigned int) ;
 int stub1 (int ) ;
 int tree_int_cst_equal (int ,int ) ;

__attribute__((used)) static int
all_ones_mask_p (tree mask, int size)
{
  tree type = TREE_TYPE (mask);
  unsigned int precision = TYPE_PRECISION (type);
  tree tmask;

  tmask = build_int_cst (lang_hooks.types.signed_type (type), -1);
  tmask = force_fit_type (tmask, 0, 0, 0);

  return
    tree_int_cst_equal (mask,
   const_binop (RSHIFT_EXPR,
         const_binop (LSHIFT_EXPR, tmask,
        size_int (precision - size),
        0),
         size_int (precision - size), 0));
}
