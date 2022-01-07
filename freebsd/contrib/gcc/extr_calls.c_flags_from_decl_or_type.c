
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_IS_MALLOC (int ) ;
 scalar_t__ DECL_IS_NOVOPS (int ) ;
 scalar_t__ DECL_IS_PURE (int ) ;
 scalar_t__ DECL_IS_RETURNS_TWICE (int ) ;
 scalar_t__ DECL_P (int ) ;
 int ECF_CONST ;
 int ECF_MALLOC ;
 int ECF_NORETURN ;
 int ECF_NOTHROW ;
 int ECF_NOVOPS ;
 int ECF_PURE ;
 int ECF_RETURNS_TWICE ;
 int ECF_SP_DEPRESSED ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_NOTHROW (int ) ;
 scalar_t__ TREE_READONLY (int ) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_P (int ) ;
 scalar_t__ TYPE_READONLY (int ) ;
 scalar_t__ TYPE_RETURNS_STACK_DEPRESSED (int ) ;
 int special_function_p (int ,int) ;

int
flags_from_decl_or_type (tree exp)
{
  int flags = 0;
  tree type = exp;

  if (DECL_P (exp))
    {
      type = TREE_TYPE (exp);


      if (DECL_IS_MALLOC (exp))
 flags |= ECF_MALLOC;


      if (DECL_IS_RETURNS_TWICE (exp))
 flags |= ECF_RETURNS_TWICE;


      if (DECL_IS_PURE (exp))
 flags |= ECF_PURE;

      if (DECL_IS_NOVOPS (exp))
 flags |= ECF_NOVOPS;

      if (TREE_NOTHROW (exp))
 flags |= ECF_NOTHROW;

      if (TREE_READONLY (exp) && ! TREE_THIS_VOLATILE (exp))
 flags |= ECF_CONST;

      flags = special_function_p (exp, flags);
    }
  else if (TYPE_P (exp) && TYPE_READONLY (exp) && ! TREE_THIS_VOLATILE (exp))
    flags |= ECF_CONST;

  if (TREE_THIS_VOLATILE (exp))
    flags |= ECF_NORETURN;



  if (TREE_CODE (type) == FUNCTION_TYPE && TYPE_RETURNS_STACK_DEPRESSED (type))
    {
      flags |= ECF_SP_DEPRESSED;
      flags &= ~(ECF_PURE | ECF_CONST);
    }

  return flags;
}
