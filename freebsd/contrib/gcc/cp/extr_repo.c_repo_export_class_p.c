
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CLASSTYPE_VTABLES (int ) ;
 int DECL_ASSEMBLER_NAME (int ) ;
 int IDENTIFIER_REPO_CHOSEN (int ) ;
 int flag_use_repository ;

bool
repo_export_class_p (tree class_type)
{
  if (!flag_use_repository)
    return 0;
  if (!CLASSTYPE_VTABLES (class_type))
    return 0;


  return (IDENTIFIER_REPO_CHOSEN
   (DECL_ASSEMBLER_NAME (CLASSTYPE_VTABLES (class_type))));
}
