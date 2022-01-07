
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__* elts; int len; } ;


 scalar_t__ ANON_AGGR_TYPE_P (scalar_t__) ;
 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ;
 scalar_t__ DECL_CLASS_TEMPLATE_P (scalar_t__) ;
 int DECL_DEPENDENT_P (scalar_t__) ;
 scalar_t__ DECL_LANG_SPECIFIC (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 int DECL_P (scalar_t__) ;
 TYPE_1__* DECL_SORTED_FIELDS (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPENAME_TYPE ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ TYPE_POLYMORPHIC_P (scalar_t__) ;
 scalar_t__ TYPE_VFIELD (scalar_t__) ;
 scalar_t__ USING_DECL ;
 int gcc_assert (int ) ;
 int n_calls_lookup_field_1 ;
 int n_fields_searched ;
 scalar_t__ vptr_identifier ;

tree
lookup_field_1 (tree type, tree name, bool want_type)
{
  tree field;

  if (TREE_CODE (type) == TEMPLATE_TYPE_PARM
      || TREE_CODE (type) == BOUND_TEMPLATE_TEMPLATE_PARM
      || TREE_CODE (type) == TYPENAME_TYPE)






    return NULL_TREE;

  if (TYPE_NAME (type)
      && DECL_LANG_SPECIFIC (TYPE_NAME (type))
      && DECL_SORTED_FIELDS (TYPE_NAME (type)))
    {
      tree *fields = &DECL_SORTED_FIELDS (TYPE_NAME (type))->elts[0];
      int lo = 0, hi = DECL_SORTED_FIELDS (TYPE_NAME (type))->len;
      int i;

      while (lo < hi)
 {
   i = (lo + hi) / 2;





   if (DECL_NAME (fields[i]) > name)
     hi = i;
   else if (DECL_NAME (fields[i]) < name)
     lo = i + 1;
   else
     {
       field = NULL_TREE;





       if (want_type)
  {
    do
      field = fields[i--];
    while (i >= lo && DECL_NAME (fields[i]) == name);
    if (TREE_CODE (field) != TYPE_DECL
        && !DECL_CLASS_TEMPLATE_P (field))
      field = NULL_TREE;
  }
       else
  {
    do
      field = fields[i++];
    while (i < hi && DECL_NAME (fields[i]) == name);
  }
       return field;
     }
 }
      return NULL_TREE;
    }

  field = TYPE_FIELDS (type);




  for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
    {



      gcc_assert (DECL_P (field));
      if (DECL_NAME (field) == NULL_TREE
   && ANON_AGGR_TYPE_P (TREE_TYPE (field)))
 {
   tree temp = lookup_field_1 (TREE_TYPE (field), name, want_type);
   if (temp)
     return temp;
 }
      if (TREE_CODE (field) == USING_DECL)
 {
   if (!DECL_DEPENDENT_P (field))
     continue;
 }

      if (DECL_NAME (field) == name
   && (!want_type
       || TREE_CODE (field) == TYPE_DECL
       || DECL_CLASS_TEMPLATE_P (field)))
 return field;
    }

  if (name == vptr_identifier)
    {

      if (TYPE_POLYMORPHIC_P (type))
 return TYPE_VFIELD (type);
    }
  return NULL_TREE;
}
