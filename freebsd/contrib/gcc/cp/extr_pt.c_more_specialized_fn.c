
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 scalar_t__ DECL_CONV_FN_P (int ) ;
 int DECL_INNERMOST_TEMPLATE_PARMS (int ) ;
 scalar_t__ DECL_NONSTATIC_MEMBER_FUNCTION_P (int ) ;
 int DECL_NTPARMS (int ) ;
 int DECL_STATIC_FUNCTION_P (int ) ;
 int DECL_TEMPLATE_RESULT (int ) ;

 int NULL_TREE ;
 int REFERENCE_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int UNIFY_ALLOW_NONE ;
 int build_pointer_type (int ) ;
 int cp_type_quals (int ) ;
 int make_tree_vec (int ) ;
 int processing_template_decl ;
 int tree_cons (int ,int ,int ) ;
 int unify (int ,int ,int ,int ,int ) ;

int
more_specialized_fn (tree pat1, tree pat2, int len)
{
  tree decl1 = DECL_TEMPLATE_RESULT (pat1);
  tree decl2 = DECL_TEMPLATE_RESULT (pat2);
  tree targs1 = make_tree_vec (DECL_NTPARMS (pat1));
  tree targs2 = make_tree_vec (DECL_NTPARMS (pat2));
  tree tparms1 = DECL_INNERMOST_TEMPLATE_PARMS (pat1);
  tree tparms2 = DECL_INNERMOST_TEMPLATE_PARMS (pat2);
  tree args1 = TYPE_ARG_TYPES (TREE_TYPE (decl1));
  tree args2 = TYPE_ARG_TYPES (TREE_TYPE (decl2));
  int better1 = 0;
  int better2 = 0;







  if (DECL_NONSTATIC_MEMBER_FUNCTION_P (decl1))
    {
      len--;
      args1 = TREE_CHAIN (args1);
      if (!DECL_STATIC_FUNCTION_P (decl2))
 args2 = TREE_CHAIN (args2);
    }
  else if (DECL_NONSTATIC_MEMBER_FUNCTION_P (decl2))
    {
      args2 = TREE_CHAIN (args2);
      if (!DECL_STATIC_FUNCTION_P (decl1))
 {
   len--;
   args1 = TREE_CHAIN (args1);
 }
    }


  if (DECL_CONV_FN_P (decl1) != DECL_CONV_FN_P (decl2))
    return 0;


  if (DECL_CONV_FN_P (decl1))
    {
      args1 = tree_cons (NULL_TREE, TREE_TYPE (TREE_TYPE (decl1)), args1);
      args2 = tree_cons (NULL_TREE, TREE_TYPE (TREE_TYPE (decl2)), args2);
      len++;
    }

  processing_template_decl++;

  while (len--)
    {
      tree arg1 = TREE_VALUE (args1);
      tree arg2 = TREE_VALUE (args2);
      int deduce1, deduce2;
      int quals1 = -1;
      int quals2 = -1;

      if (TREE_CODE (arg1) == REFERENCE_TYPE)
 {
   arg1 = TREE_TYPE (arg1);
   quals1 = cp_type_quals (arg1);
 }

      if (TREE_CODE (arg2) == REFERENCE_TYPE)
 {
   arg2 = TREE_TYPE (arg2);
   quals2 = cp_type_quals (arg2);
 }

      if ((quals1 < 0) != (quals2 < 0))
 {






   if (quals1 >= 0)
     {
       switch (TREE_CODE (arg1))
  {
  case 129:
    arg1 = TREE_TYPE (arg1);

  case 128:
    arg1 = build_pointer_type (arg1);
    break;

  default:
    break;
  }
     }
   else
     {
       switch (TREE_CODE (arg2))
  {
  case 129:
    arg2 = TREE_TYPE (arg2);

  case 128:
    arg2 = build_pointer_type (arg2);
    break;

  default:
    break;
  }
     }
 }

      arg1 = TYPE_MAIN_VARIANT (arg1);
      arg2 = TYPE_MAIN_VARIANT (arg2);

      deduce1 = !unify (tparms1, targs1, arg1, arg2, UNIFY_ALLOW_NONE);
      deduce2 = !unify (tparms2, targs2, arg2, arg1, UNIFY_ALLOW_NONE);

      if (!deduce1)
 better2 = -1;
      if (!deduce2)
 better1 = -1;
      if (better1 < 0 && better2 < 0)


 break;

      if (deduce1 && deduce2 && quals1 >= 0 && quals2 >= 0)
 {


   if ((quals1 & quals2) == quals2)
     deduce1 = 0;
   if ((quals1 & quals2) == quals1)
     deduce2 = 0;
 }
      if (deduce1 && !deduce2 && !better2)
 better2 = 1;
      if (deduce2 && !deduce1 && !better1)
 better1 = 1;

      args1 = TREE_CHAIN (args1);
      args2 = TREE_CHAIN (args2);
    }

  processing_template_decl--;

  return (better1 > 0) - (better2 > 0);
}
