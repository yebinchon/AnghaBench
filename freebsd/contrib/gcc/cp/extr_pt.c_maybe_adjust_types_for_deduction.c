
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unification_kind_t ;
typedef int tree ;


 scalar_t__ ARRAY_TYPE ;



 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int UNIFY_ALLOW_OUTER_MORE_CV_QUAL ;
 int build_pointer_type (int ) ;
 int gcc_unreachable () ;

__attribute__((used)) static int
maybe_adjust_types_for_deduction (unification_kind_t strict,
      tree* parm,
      tree* arg)
{
  int result = 0;

  switch (strict)
    {
    case 130:
      break;

    case 129:
      {



 tree* temp = parm;
 parm = arg;
 arg = temp;
 break;
      }

    case 128:

      return 0;

    default:
      gcc_unreachable ();
    }

  if (TREE_CODE (*parm) != REFERENCE_TYPE)
    {
      if (TREE_CODE (*arg) == ARRAY_TYPE)
 *arg = build_pointer_type (TREE_TYPE (*arg));
      else if (TREE_CODE (*arg) == FUNCTION_TYPE)
 *arg = build_pointer_type (*arg);
      else
 *arg = TYPE_MAIN_VARIANT (*arg);
    }







  *parm = TYPE_MAIN_VARIANT (*parm);
  if (TREE_CODE (*parm) == REFERENCE_TYPE)
    {
      *parm = TREE_TYPE (*parm);
      result |= UNIFY_ALLOW_OUTER_MORE_CV_QUAL;
    }



  if (strict == 129 && TREE_CODE (*arg) == REFERENCE_TYPE)
    *arg = TREE_TYPE (*arg);

  return result;
}
