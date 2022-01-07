
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_EXTERN_C_FUNCTION_P (scalar_t__) ;
 scalar_t__ DECL_LOCAL_FUNCTION_P (scalar_t__) ;
 int decls_match (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int
equal_functions (tree fn1, tree fn2)
{
  if (DECL_LOCAL_FUNCTION_P (fn1) || DECL_LOCAL_FUNCTION_P (fn2)
      || DECL_EXTERN_C_FUNCTION_P (fn1))
    return decls_match (fn1, fn2);
  return fn1 == fn2;
}
