
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsubst_flags_t ;
typedef char* tree ;


 int DECL_NTPARMS (char*) ;
 scalar_t__ INTEGRAL_OR_ENUMERATION_TYPE_P (scalar_t__) ;
 int NULL_TREE ;
 int TREE_CONSTANT (char*) ;
 scalar_t__ TREE_TYPE (char*) ;
 char* TREE_VEC_ELT (char*,int) ;
 scalar_t__ TYPE_ANONYMOUS_P (char*) ;
 scalar_t__ TYPE_P (char*) ;
 int error (char*,char*,...) ;
 char* no_linkage_check (char*,int) ;
 int tf_error ;
 scalar_t__ variably_modified_type_p (char*,int ) ;

__attribute__((used)) static bool
check_instantiated_args (tree tmpl, tree args, tsubst_flags_t complain)
{
  int ix, len = DECL_NTPARMS (tmpl);
  bool result = 0;

  for (ix = 0; ix != len; ix++)
    {
      tree t = TREE_VEC_ELT (args, ix);

      if (TYPE_P (t))
 {





   tree nt = no_linkage_check (t, 0);

   if (nt)
     {


       if (complain & tf_error)
  {
    if (TYPE_ANONYMOUS_P (nt))
      error ("%qT is/uses anonymous type", t);
    else
      error ("template argument for %qD uses local type %qT",
      tmpl, t);
  }
       result = 1;
     }


   else if (variably_modified_type_p (t, NULL_TREE))
     {
       if (complain & tf_error)
  error ("%qT is a variably modified type", t);
       result = 1;
     }
 }


      else if (TREE_TYPE (t)
        && INTEGRAL_OR_ENUMERATION_TYPE_P (TREE_TYPE (t))
        && !TREE_CONSTANT (t))
 {
   if (complain & tf_error)
     error ("integral expression %qE is not constant", t);
   result = 1;
 }
    }
  if (result && (complain & tf_error))
    error ("  trying to instantiate %qD", tmpl);
  return result;
}
