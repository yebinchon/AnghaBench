
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
typedef int HOST_WIDE_INT ;


 scalar_t__ COMPONENT_REF ;
 unsigned int DECL_ALIGN_UNIT (int ) ;
 scalar_t__ DECL_P (int ) ;
 scalar_t__ FIELD_DECL ;
 int GS_UNHANDLED ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 unsigned int TYPE_ALIGN_UNIT (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int TYPE_SIZE_UNIT (int ) ;
 int exact_log2 (unsigned int) ;
 int gimplify_omp_atomic_fetch_op (int *,int ,int ,int) ;
 int gimplify_omp_atomic_mutex (int *,int *,int ,int ) ;
 int gimplify_omp_atomic_pipeline (int *,int *,int ,int ,int) ;
 int tree_low_cst (int ,int) ;

__attribute__((used)) static enum gimplify_status
gimplify_omp_atomic (tree *expr_p, tree *pre_p)
{
  tree addr = TREE_OPERAND (*expr_p, 0);
  tree rhs = TREE_OPERAND (*expr_p, 1);
  tree type = TYPE_MAIN_VARIANT (TREE_TYPE (TREE_TYPE (addr)));
  HOST_WIDE_INT index;


  index = tree_low_cst (TYPE_SIZE_UNIT (type), 1);
  index = exact_log2 (index);
  if (index >= 0 && index <= 4)
    {
      enum gimplify_status gs;
      unsigned int align;

      if (DECL_P (TREE_OPERAND (addr, 0)))
 align = DECL_ALIGN_UNIT (TREE_OPERAND (addr, 0));
      else if (TREE_CODE (TREE_OPERAND (addr, 0)) == COMPONENT_REF
        && TREE_CODE (TREE_OPERAND (TREE_OPERAND (addr, 0), 1))
    == FIELD_DECL)
 align = DECL_ALIGN_UNIT (TREE_OPERAND (TREE_OPERAND (addr, 0), 1));
      else
 align = TYPE_ALIGN_UNIT (type);


      if (exact_log2 (align) >= index)
 {

   if (INTEGRAL_TYPE_P (type) || POINTER_TYPE_P (type))
     {
       gs = gimplify_omp_atomic_fetch_op (expr_p, addr, rhs, index);
       if (gs != GS_UNHANDLED)
  return gs;
     }



   gs = gimplify_omp_atomic_pipeline (expr_p, pre_p, addr, rhs, index);
   if (gs != GS_UNHANDLED)
     return gs;
 }
    }


  return gimplify_omp_atomic_mutex (expr_p, pre_p, addr, rhs);
}
