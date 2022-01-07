
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASSTYPE_DECLARED_CLASS (int ) ;
 scalar_t__ ENUMERAL_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_LANG_SPECIFIC (int ) ;
 scalar_t__ UNION_TYPE ;

const char *
class_key_or_enum_as_string (tree t)
{
  if (TREE_CODE (t) == ENUMERAL_TYPE)
    return "enum";
  else if (TREE_CODE (t) == UNION_TYPE)
    return "union";
  else if (TYPE_LANG_SPECIFIC (t) && CLASSTYPE_DECLARED_CLASS (t))
    return "class";
  else
    return "struct";
}
