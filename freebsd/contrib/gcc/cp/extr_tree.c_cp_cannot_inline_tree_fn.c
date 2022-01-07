
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int DECL_UNINLINABLE ;


 int DECL_ATTRIBUTES (int ) ;
 int DECL_DECLARED_INLINE_P (int ) ;
 int DECL_INLINE (int ) ;
 scalar_t__ DECL_REPLACEABLE_P (int ) ;
 scalar_t__ DECL_TEMPLATE_INFO (int ) ;
 int DECL_TEMPLATE_RESULT (int ) ;
 scalar_t__ TI_PENDING_TEMPLATE_FLAG (scalar_t__) ;
 scalar_t__ flag_really_no_inline ;
 int function_attribute_inlinable_p (int ) ;
 int instantiate_decl (int ,int ,int ) ;
 int * lookup_attribute (char*,int ) ;
 int template_for_substitution (int ) ;
 scalar_t__ varargs_function_p (int ) ;

int
cp_cannot_inline_tree_fn (tree* fnp)
{
  tree fn = *fnp;



  if (DECL_TEMPLATE_INFO (fn)
      && TI_PENDING_TEMPLATE_FLAG (DECL_TEMPLATE_INFO (fn)))
    {


      if (!DECL_INLINE (DECL_TEMPLATE_RESULT
   (template_for_substitution (fn))))
 return 1;

      fn = *fnp = instantiate_decl (fn, 0, 0);

      if (TI_PENDING_TEMPLATE_FLAG (DECL_TEMPLATE_INFO (fn)))
 return 1;
    }

  if (flag_really_no_inline
      && lookup_attribute ("always_inline", DECL_ATTRIBUTES (fn)) == ((void*)0))
    return 1;



  if (!DECL_DECLARED_INLINE_P (fn) && DECL_REPLACEABLE_P (fn))
    {
      DECL_UNINLINABLE (fn) = 1;
      return 1;
    }

  if (varargs_function_p (fn))
    {
      DECL_UNINLINABLE (fn) = 1;
      return 1;
    }

  if (! function_attribute_inlinable_p (fn))
    {
      DECL_UNINLINABLE (fn) = 1;
      return 1;
    }

  return 0;
}
