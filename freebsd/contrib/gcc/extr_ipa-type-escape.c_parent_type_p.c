
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BINFO_BASE_ITERATE (scalar_t__,int,scalar_t__) ;
 scalar_t__ BINFO_TYPE (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ QUAL_UNION_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ UNION_TYPE ;

__attribute__((used)) static bool
parent_type_p (tree parent, tree child)
{
  int i;
  tree binfo, base_binfo;
  if (TYPE_BINFO (parent))
    for (binfo = TYPE_BINFO (parent), i = 0;
  BINFO_BASE_ITERATE (binfo, i, base_binfo); i++)
      {
 tree binfotype = BINFO_TYPE (base_binfo);
 if (binfotype == child)
   return 1;
 else if (parent_type_p (binfotype, child))
   return 1;
      }
  if (TREE_CODE (parent) == UNION_TYPE
      || TREE_CODE (parent) == QUAL_UNION_TYPE)
    {
      tree field;


      for (field = TYPE_FIELDS (parent);
    field;
    field = TREE_CHAIN (field))
 {
   tree field_type;
   if (TREE_CODE (field) != FIELD_DECL)
     continue;

   field_type = TREE_TYPE (field);
   if (field_type == child)
     return 1;
 }



      for (field = TYPE_FIELDS (parent);
    field;
    field = TREE_CHAIN (field))
 {
   tree field_type;
   if (TREE_CODE (field) != FIELD_DECL)
     continue;

   field_type = TREE_TYPE (field);
   if (TREE_CODE (field_type) == RECORD_TYPE
       || TREE_CODE (field_type) == QUAL_UNION_TYPE
       || TREE_CODE (field_type) == UNION_TYPE)
     if (parent_type_p (field_type, child))
       return 1;
 }
    }

  if (TREE_CODE (parent) == RECORD_TYPE)
    {
      tree field;
      for (field = TYPE_FIELDS (parent);
    field;
    field = TREE_CHAIN (field))
 {
   tree field_type;
   if (TREE_CODE (field) != FIELD_DECL)
     continue;

   field_type = TREE_TYPE (field);
   if (field_type == child)
     return 1;


   if (TREE_CODE (field_type) == RECORD_TYPE
       || TREE_CODE (field_type) == QUAL_UNION_TYPE
       || TREE_CODE (field_type) == UNION_TYPE)
     {
       if (parent_type_p (field_type, child))
  return 1;
       else
  break;
     }
 }
    }
  return 0;
}
