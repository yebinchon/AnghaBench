
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ IDENTIFIER_TEMPLATE (scalar_t__) ;
 scalar_t__ constructor_name_full (scalar_t__) ;

tree
constructor_name (tree type)
{
  tree name;
  name = constructor_name_full (type);
  if (IDENTIFIER_TEMPLATE (name))
    name = IDENTIFIER_TEMPLATE (name);
  return name;
}
