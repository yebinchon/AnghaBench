
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ BINFO_BASE_ITERATE (scalar_t__,int,scalar_t__) ;
 scalar_t__ BINFO_TYPE (scalar_t__) ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 int DECL_ARTIFICIAL (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ is_empty_class (scalar_t__) ;

__attribute__((used)) static bool
contains_empty_class_p (tree type)
{
  if (is_empty_class (type))
    return 1;
  if (CLASS_TYPE_P (type))
    {
      tree field;
      tree binfo;
      tree base_binfo;
      int i;

      for (binfo = TYPE_BINFO (type), i = 0;
    BINFO_BASE_ITERATE (binfo, i, base_binfo); ++i)
 if (contains_empty_class_p (BINFO_TYPE (base_binfo)))
   return 1;
      for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
 if (TREE_CODE (field) == FIELD_DECL
     && !DECL_ARTIFICIAL (field)
     && is_empty_class (TREE_TYPE (field)))
   return 1;
    }
  else if (TREE_CODE (type) == ARRAY_TYPE)
    return contains_empty_class_p (TREE_TYPE (type));
  return 0;
}
