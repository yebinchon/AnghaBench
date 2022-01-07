
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ METHOD_TYPE ;
 int POINTER_TYPE_P (int ) ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CODE (int ) ;
 int TYPE_QUAL_CONST ;
 int TYPE_QUAL_RESTRICT ;
 int TYPE_QUAL_VOLATILE ;
 int UNIFY_ALLOW_LESS_CV_QUAL ;
 int UNIFY_ALLOW_MORE_CV_QUAL ;
 int UNIFY_ALLOW_OUTER_LESS_CV_QUAL ;
 int UNIFY_ALLOW_OUTER_MORE_CV_QUAL ;
 int cp_type_quals (int ) ;

__attribute__((used)) static int
check_cv_quals_for_unify (int strict, tree arg, tree parm)
{
  int arg_quals = cp_type_quals (arg);
  int parm_quals = cp_type_quals (parm);

  if (TREE_CODE (parm) == TEMPLATE_TYPE_PARM
      && !(strict & UNIFY_ALLOW_OUTER_MORE_CV_QUAL))
    {






      if ((TREE_CODE (arg) == REFERENCE_TYPE
    || TREE_CODE (arg) == FUNCTION_TYPE
    || TREE_CODE (arg) == METHOD_TYPE)
   && (parm_quals & (TYPE_QUAL_CONST | TYPE_QUAL_VOLATILE)))
 return 0;

      if ((!POINTER_TYPE_P (arg) && TREE_CODE (arg) != TEMPLATE_TYPE_PARM)
   && (parm_quals & TYPE_QUAL_RESTRICT))
 return 0;
    }

  if (!(strict & (UNIFY_ALLOW_MORE_CV_QUAL | UNIFY_ALLOW_OUTER_MORE_CV_QUAL))
      && (arg_quals & parm_quals) != parm_quals)
    return 0;

  if (!(strict & (UNIFY_ALLOW_LESS_CV_QUAL | UNIFY_ALLOW_OUTER_LESS_CV_QUAL))
      && (parm_quals & arg_quals) != arg_quals)
    return 0;

  return 1;
}
