
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;







 scalar_t__ DECL_BUILT_IN (int ) ;
 int DECL_FUNCTION_CODE (int ) ;

__attribute__((used)) static bool
magic_varargs_p (tree fn)
{
  if (DECL_BUILT_IN (fn))
    switch (DECL_FUNCTION_CODE (fn))
      {
      case 132:
      case 131:
      case 130:
      case 129:
      case 128:
 return 1;

      default:;
      }

  return 0;
}
