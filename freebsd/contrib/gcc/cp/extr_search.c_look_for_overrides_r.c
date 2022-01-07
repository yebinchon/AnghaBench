
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int DECL_VIRTUAL_P ;


 scalar_t__ DECL_STATIC_FUNCTION_P (scalar_t__) ;
 int check_final_overrider (int,scalar_t__) ;
 int error (char*,scalar_t__) ;
 int look_for_overrides (scalar_t__,scalar_t__) ;
 scalar_t__ look_for_overrides_here (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
look_for_overrides_r (tree type, tree fndecl)
{
  tree fn = look_for_overrides_here (type, fndecl);
  if (fn)
    {
      if (DECL_STATIC_FUNCTION_P (fndecl))
 {


   error ("%q+#D cannot be declared", fndecl);
   error ("  since %q+#D declared in base class", fn);
 }
      else
 {

   DECL_VIRTUAL_P (fndecl) = 1;
   check_final_overrider (fndecl, fn);
 }
      return 1;
    }


  return look_for_overrides (type, fndecl);
}
