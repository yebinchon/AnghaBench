
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ HOST_WIDE_INT ;



 int BINFO_BASE_ITERATE (int ,int,int ) ;
 int BINFO_TYPE (int ) ;

 int DECL_NONADDRESSABLE_P (int ) ;
 int FIELD_DECL ;


 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_BINFO (int ) ;
 int TYPE_FIELDS (int ) ;
 int TYPE_NONALIASED_COMPONENT (int ) ;

 scalar_t__ get_alias_set (int ) ;
 int record_alias_subset (scalar_t__,scalar_t__) ;

void
record_component_aliases (tree type)
{
  HOST_WIDE_INT superset = get_alias_set (type);
  tree field;

  if (superset == 0)
    return;

  switch (TREE_CODE (type))
    {
    case 132:
      if (! TYPE_NONALIASED_COMPONENT (type))
 record_alias_subset (superset, get_alias_set (TREE_TYPE (type)));
      break;

    case 129:
    case 128:
    case 130:

      if (TYPE_BINFO (type))
 {
   int i;
   tree binfo, base_binfo;

   for (binfo = TYPE_BINFO (type), i = 0;
        BINFO_BASE_ITERATE (binfo, i, base_binfo); i++)
     record_alias_subset (superset,
     get_alias_set (BINFO_TYPE (base_binfo)));
 }
      for (field = TYPE_FIELDS (type); field != 0; field = TREE_CHAIN (field))
 if (TREE_CODE (field) == FIELD_DECL && ! DECL_NONADDRESSABLE_P (field))
   record_alias_subset (superset, get_alias_set (TREE_TYPE (field)));
      break;

    case 131:
      record_alias_subset (superset, get_alias_set (TREE_TYPE (type)));
      break;

    default:
      break;
    }
}
