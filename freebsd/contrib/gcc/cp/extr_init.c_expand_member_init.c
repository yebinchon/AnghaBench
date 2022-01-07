
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BINFO_BASE_BINFO (scalar_t__,int ) ;
 scalar_t__ BINFO_BASE_ITERATE (scalar_t__,int,scalar_t__) ;
 int BINFO_N_BASE_BINFOS (scalar_t__) ;
 scalar_t__ BINFO_TYPE (scalar_t__) ;
 int BINFO_VIRTUAL_P (scalar_t__) ;
 scalar_t__ CLASSTYPE_VBASECLASSES (char*) ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ SAME_BINFO_TYPE_P (scalar_t__,scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (char*) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ binfo_for_vbase (scalar_t__,char*) ;
 int current_class_ref ;
 char* current_class_type ;
 scalar_t__ current_template_parms ;
 int error (char*,char*,...) ;
 scalar_t__ lookup_field (char*,scalar_t__,int,int) ;
 scalar_t__ member_init_ok_or_else (scalar_t__,char*,scalar_t__) ;

tree
expand_member_init (tree name)
{
  tree basetype;
  tree field;

  if (!current_class_ref)
    return NULL_TREE;

  if (!name)
    {


      switch (BINFO_N_BASE_BINFOS (TYPE_BINFO (current_class_type)))
 {
 case 0:
   error ("unnamed initializer for %qT, which has no base classes",
   current_class_type);
   return NULL_TREE;
 case 1:
   basetype = BINFO_TYPE
     (BINFO_BASE_BINFO (TYPE_BINFO (current_class_type), 0));
   break;
 default:
   error ("unnamed initializer for %qT, which uses multiple inheritance",
   current_class_type);
   return NULL_TREE;
      }
    }
  else if (TYPE_P (name))
    {
      basetype = TYPE_MAIN_VARIANT (name);
      name = TYPE_NAME (name);
    }
  else if (TREE_CODE (name) == TYPE_DECL)
    basetype = TYPE_MAIN_VARIANT (TREE_TYPE (name));
  else
    basetype = NULL_TREE;

  if (basetype)
    {
      tree class_binfo;
      tree direct_binfo;
      tree virtual_binfo;
      int i;

      if (current_template_parms)
 return basetype;

      class_binfo = TYPE_BINFO (current_class_type);
      direct_binfo = NULL_TREE;
      virtual_binfo = NULL_TREE;


      for (i = 0; BINFO_BASE_ITERATE (class_binfo, i, direct_binfo); ++i)
 if (SAME_BINFO_TYPE_P (BINFO_TYPE (direct_binfo), basetype))
   break;



      if (!direct_binfo || !BINFO_VIRTUAL_P (direct_binfo))
 virtual_binfo = binfo_for_vbase (basetype, current_class_type);






      if (direct_binfo && virtual_binfo)
 {
   error ("%qD is both a direct base and an indirect virtual base",
   basetype);
   return NULL_TREE;
 }

      if (!direct_binfo && !virtual_binfo)
 {
   if (CLASSTYPE_VBASECLASSES (current_class_type))
     error ("type %qT is not a direct or virtual base of %qT",
     basetype, current_class_type);
   else
     error ("type %qT is not a direct base of %qT",
     basetype, current_class_type);
   return NULL_TREE;
 }

      return direct_binfo ? direct_binfo : virtual_binfo;
    }
  else
    {
      if (TREE_CODE (name) == IDENTIFIER_NODE)
 field = lookup_field (current_class_type, name, 1, 0);
      else
 field = name;

      if (member_init_ok_or_else (field, current_class_type, name))
 return field;
    }

  return NULL_TREE;
}
