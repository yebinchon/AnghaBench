
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_57__ TYPE_3__ ;
typedef struct TYPE_56__ TYPE_2__ ;
typedef struct TYPE_55__ TYPE_1__ ;
typedef struct TYPE_54__ TYPE_19__ ;


typedef TYPE_3__* tree ;
typedef int rtx ;
struct TYPE_56__ {int rtl; } ;
struct TYPE_57__ {TYPE_2__ decl_with_rtl; } ;
struct TYPE_55__ {TYPE_3__* (* type_for_mode ) (int ,int) ;TYPE_3__* (* unsigned_type ) (TYPE_3__*) ;TYPE_3__* (* signed_type ) (TYPE_3__*) ;} ;
struct TYPE_54__ {TYPE_1__ types; } ;
typedef int REAL_VALUE_TYPE ;
typedef int HOST_WIDE_INT ;






 int CONST_DOUBLE_HIGH (int ) ;
 int CONST_DOUBLE_LOW (int ) ;


 int CONST_VECTOR_ELT (int ,int) ;
 int CONST_VECTOR_NUNITS (int ) ;

 int const GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int ) ;
 int HOST_BITS_PER_WIDE_INT ;
 int INTVAL (int ) ;

 int LSHIFT_EXPR ;

 int MINUS_EXPR ;

 int MULT_EXPR ;

 int NEGATE_EXPR ;
 TYPE_3__* NULL_TREE ;

 int PLUS_EXPR ;
 int POINTER_TYPE_P (TYPE_3__*) ;
 int REAL_TYPE ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,int ) ;
 int RSHIFT_EXPR ;


 TYPE_3__* SYMBOL_REF_DECL (int ) ;
 int TREE_CODE (TYPE_3__*) ;
 TYPE_3__* TREE_TYPE (TYPE_3__*) ;
 int TRUNC_DIV_EXPR ;
 int TYPE_MODE (TYPE_3__*) ;
 int TYPE_UNSIGNED (TYPE_3__*) ;

 int VAR_DECL ;
 int VOIDmode ;
 int XEXP (int ,int) ;

 TYPE_3__* build2 (int ,TYPE_3__*,TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* build_decl (int ,TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* build_fold_addr_expr (TYPE_3__*) ;
 TYPE_3__* build_int_cst_wide (TYPE_3__*,int ,int) ;
 TYPE_3__* build_real (TYPE_3__*,int ) ;
 TYPE_3__* build_vector (TYPE_3__*,TYPE_3__*) ;
 int convert_memory_address (int ,int ) ;
 TYPE_3__* fold_build1 (int ,TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* fold_build2 (int ,TYPE_3__*,TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* fold_convert (TYPE_3__*,TYPE_3__*) ;
 TYPE_19__ lang_hooks ;
 TYPE_3__* stub1 (TYPE_3__*) ;
 TYPE_3__* stub2 (TYPE_3__*) ;
 TYPE_3__* stub3 (TYPE_3__*) ;
 TYPE_3__* stub4 (TYPE_3__*) ;
 TYPE_3__* stub5 (int ,int) ;
 TYPE_3__* tree_cons (TYPE_3__*,TYPE_3__*,TYPE_3__*) ;

tree
make_tree (tree type, rtx x)
{
  tree t;

  switch (GET_CODE (x))
    {
    case 139:
      {
 HOST_WIDE_INT hi = 0;

 if (INTVAL (x) < 0
     && !(TYPE_UNSIGNED (type)
   && (GET_MODE_BITSIZE (TYPE_MODE (type))
       < HOST_BITS_PER_WIDE_INT)))
   hi = -1;

 t = build_int_cst_wide (type, INTVAL (x), hi);

 return t;
      }

    case 140:
      if (GET_MODE (x) == VOIDmode)
 t = build_int_cst_wide (type,
    CONST_DOUBLE_LOW (x), CONST_DOUBLE_HIGH (x));
      else
 {
   REAL_VALUE_TYPE d;

   REAL_VALUE_FROM_CONST_DOUBLE (d, x);
   t = build_real (type, d);
 }

      return t;

    case 138:
      {
 int units = CONST_VECTOR_NUNITS (x);
 tree itype = TREE_TYPE (type);
 tree t = NULL_TREE;
 int i;



 for (i = units - 1; i >= 0; --i)
   {
     rtx elt = CONST_VECTOR_ELT (x, i);
     t = tree_cons (NULL_TREE, make_tree (itype, elt), t);
   }

 return build_vector (type, t);
      }

    case 132:
      return fold_build2 (PLUS_EXPR, type, make_tree (type, XEXP (x, 0)),
     make_tree (type, XEXP (x, 1)));

    case 135:
      return fold_build2 (MINUS_EXPR, type, make_tree (type, XEXP (x, 0)),
     make_tree (type, XEXP (x, 1)));

    case 133:
      return fold_build1 (NEGATE_EXPR, type, make_tree (type, XEXP (x, 0)));

    case 134:
      return fold_build2 (MULT_EXPR, type, make_tree (type, XEXP (x, 0)),
     make_tree (type, XEXP (x, 1)));

    case 143:
      return fold_build2 (LSHIFT_EXPR, type, make_tree (type, XEXP (x, 0)),
     make_tree (type, XEXP (x, 1)));

    case 136:
      t = lang_hooks.types.unsigned_type (type);
      return fold_convert (type, build2 (RSHIFT_EXPR, t,
          make_tree (t, XEXP (x, 0)),
          make_tree (type, XEXP (x, 1))));

    case 142:
      t = lang_hooks.types.signed_type (type);
      return fold_convert (type, build2 (RSHIFT_EXPR, t,
      make_tree (t, XEXP (x, 0)),
          make_tree (type, XEXP (x, 1))));

    case 137:
      if (TREE_CODE (type) != REAL_TYPE)
 t = lang_hooks.types.signed_type (type);
      else
 t = type;

      return fold_convert (type, build2 (TRUNC_DIV_EXPR, t,
          make_tree (t, XEXP (x, 0)),
          make_tree (t, XEXP (x, 1))));
    case 129:
      t = lang_hooks.types.unsigned_type (type);
      return fold_convert (type, build2 (TRUNC_DIV_EXPR, t,
          make_tree (t, XEXP (x, 0)),
          make_tree (t, XEXP (x, 1))));

    case 131:
    case 128:
      t = lang_hooks.types.type_for_mode (GET_MODE (XEXP (x, 0)),
       GET_CODE (x) == 128);
      return fold_convert (type, make_tree (t, XEXP (x, 0)));

    case 141:
      return make_tree (type, XEXP (x, 0));

    case 130:
      t = SYMBOL_REF_DECL (x);
      if (t)
 return fold_convert (type, build_fold_addr_expr (t));


    default:
      t = build_decl (VAR_DECL, NULL_TREE, type);



      if (POINTER_TYPE_P (type))
 x = convert_memory_address (TYPE_MODE (type), x);



      t->decl_with_rtl.rtl = x;

      return t;
    }
}
