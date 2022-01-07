
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_NAME (scalar_t__) ;

__attribute__((used)) static char*
get_name_of_type (tree type)
{
  tree name = TYPE_NAME (type);

  if (!name)

    return (char*)"<UNNAMED>";



  if (TREE_CODE (name) == TYPE_DECL)
    {



      if (DECL_NAME (name))
 return (char*)IDENTIFIER_POINTER (DECL_NAME (name));
      else

 return (char*)"<UNNAMED>";
    }
  else if (TREE_CODE (name) == IDENTIFIER_NODE)
    return (char*)IDENTIFIER_POINTER (name);
  else
    return (char*)"<UNNAMED>";
}
