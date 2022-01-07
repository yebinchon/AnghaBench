
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct sra_elt {scalar_t__ parent; scalar_t__ element; } ;


 int DECL_FIELD_CONTEXT (scalar_t__) ;





 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;

 int fields_compatible_p (scalar_t__,scalar_t__) ;
 int gcc_unreachable () ;
 int tree_int_cst_equal (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
sra_elt_eq (const void *x, const void *y)
{
  const struct sra_elt *a = x;
  const struct sra_elt *b = y;
  tree ae, be;

  if (a->parent != b->parent)
    return 0;

  ae = a->element;
  be = b->element;

  if (ae == be)
    return 1;
  if (TREE_CODE (ae) != TREE_CODE (be))
    return 0;

  switch (TREE_CODE (ae))
    {
    case 128:
    case 131:
    case 129:

      return 0;

    case 132:

      return tree_int_cst_equal (ae, be);

    case 130:
      return
 tree_int_cst_equal (TREE_OPERAND (ae, 0), TREE_OPERAND (be, 0))
 && tree_int_cst_equal (TREE_OPERAND (ae, 1), TREE_OPERAND (be, 1));

    case 133:


      if (DECL_FIELD_CONTEXT (ae) == DECL_FIELD_CONTEXT (be))
 return 0;
      return fields_compatible_p (ae, be);

    default:
      gcc_unreachable ();
    }
}
