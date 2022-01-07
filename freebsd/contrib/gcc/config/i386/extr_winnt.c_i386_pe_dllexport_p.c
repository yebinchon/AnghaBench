
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ATTRIBUTES (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int TYPE_ATTRIBUTES (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ associated_type (int ) ;
 int i386_pe_type_dllexport_p (int ) ;
 scalar_t__ lookup_attribute (char*,int ) ;

__attribute__((used)) static bool
i386_pe_dllexport_p (tree decl)
{
  if (TREE_CODE (decl) != VAR_DECL
       && TREE_CODE (decl) != FUNCTION_DECL)
    return 0;

  if (lookup_attribute ("dllexport", DECL_ATTRIBUTES (decl)))
    return 1;


  if (associated_type (decl)
      && lookup_attribute ("dllexport",
       TYPE_ATTRIBUTES (associated_type (decl))))
    return i386_pe_type_dllexport_p (decl);

  return 0;
}
