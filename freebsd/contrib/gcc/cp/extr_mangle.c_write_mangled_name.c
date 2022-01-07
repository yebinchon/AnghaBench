
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int need_abi_warning; } ;


 scalar_t__ CP_DECL_CONTEXT (int const) ;
 scalar_t__ DECL_EXTERNAL_LINKAGE_P (int const) ;
 scalar_t__ DECL_EXTERN_C_FUNCTION_P (int const) ;
 scalar_t__ DECL_EXTERN_C_P (int const) ;
 scalar_t__ DECL_LANG_SPECIFIC (int const) ;
 scalar_t__ DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P (int const) ;
 scalar_t__ DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P (int const) ;
 int DECL_NAME (int const) ;
 int DECL_OVERLOADED_OPERATOR_P (int const) ;
 TYPE_1__ G ;
 char* IDENTIFIER_POINTER (int ) ;
 int MANGLE_TRACE_TREE (char*,int const) ;
 scalar_t__ TREE_CODE (int const) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ abi_version_at_least (int) ;
 scalar_t__ global_namespace ;
 int write_encoding (int const) ;
 int write_source_name (int ) ;
 int write_string (char*) ;

__attribute__((used)) static void
write_mangled_name (const tree decl, bool top_level)
{
  MANGLE_TRACE_TREE ("mangled-name", decl);

  if (
      DECL_EXTERN_C_FUNCTION_P (decl)

      && !DECL_OVERLOADED_OPERATOR_P (decl))
    {
    unmangled_name:;

      if (top_level)
 write_string (IDENTIFIER_POINTER (DECL_NAME (decl)));
      else
 {





   if (abi_version_at_least (2))
     write_string ("_Z");
   else
     G.need_abi_warning = 1;
   write_source_name (DECL_NAME (decl));
 }
    }
  else if (TREE_CODE (decl) == VAR_DECL

    && DECL_EXTERNAL_LINKAGE_P (decl)
    && (CP_DECL_CONTEXT (decl) == global_namespace

        || DECL_EXTERN_C_P (decl)))
    {
      if (top_level || abi_version_at_least (2))
 goto unmangled_name;
      else
 {
   G.need_abi_warning = 1;
   goto mangled_name;
 }
    }
  else
    {
    mangled_name:;
      write_string ("_Z");
      write_encoding (decl);
      if (DECL_LANG_SPECIFIC (decl)
   && (DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P (decl)
       || DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P (decl)))



 write_string (" *INTERNAL* ");
    }
}
