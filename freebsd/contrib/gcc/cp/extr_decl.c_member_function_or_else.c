
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum overload_flags { ____Placeholder_overload_flags } overload_flags ;


 int DTOR_FLAG ;
 int error (char*,scalar_t__) ;

__attribute__((used)) static int
member_function_or_else (tree ctype, tree cur_type, enum overload_flags flags)
{
  if (ctype && ctype != cur_type)
    {
      if (flags == DTOR_FLAG)
 error ("destructor for alien class %qT cannot be a member", ctype);
      else
 error ("constructor for alien class %qT cannot be a member", ctype);
      return 0;
    }
  return 1;
}
