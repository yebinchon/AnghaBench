
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_CONSTRUCTOR_P (int ) ;
 scalar_t__ DECL_COPY_CONSTRUCTOR_P (int ) ;
 scalar_t__ DECL_DESTRUCTOR_P (int ) ;
 scalar_t__ DECL_FUNCTION_MEMBER_P (int ) ;
 scalar_t__ DECL_STATIC_FUNCTION_P (int ) ;

__attribute__((used)) static const char *
function_category (tree fn)
{
  if (DECL_FUNCTION_MEMBER_P (fn))
    {
      if (DECL_STATIC_FUNCTION_P (fn))
 return "static member function";
      else if (DECL_COPY_CONSTRUCTOR_P (fn))
 return "copy constructor";
      else if (DECL_CONSTRUCTOR_P (fn))
 return "constructor";
      else if (DECL_DESTRUCTOR_P (fn))
 return "destructor";
      else
 return "member function";
    }
  else
    return "function";
}
