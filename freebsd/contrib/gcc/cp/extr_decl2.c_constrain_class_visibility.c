
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BINFO_BASE_ITERATE (scalar_t__,int,scalar_t__) ;
 scalar_t__ CLASSTYPE_VISIBILITY_SPECIFIED (scalar_t__) ;
 scalar_t__ DECL_IN_SYSTEM_HEADER (int ) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ IS_AGGR_TYPE (scalar_t__) ;
 int OPT_Wattributes ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 int TYPE_MAIN_DECL (scalar_t__) ;
 int VISIBILITY_ANON ;
 int VISIBILITY_HIDDEN ;
 int VISIBILITY_INTERNAL ;
 scalar_t__ error_mark_node ;
 int in_main_input_context () ;
 scalar_t__ strip_array_types (scalar_t__) ;
 int type_visibility (scalar_t__) ;
 int warning (int ,char*,scalar_t__,scalar_t__) ;

void
constrain_class_visibility (tree type)
{
  tree binfo;
  tree t;
  int i;

  int vis = type_visibility (type);

  if (vis == VISIBILITY_ANON
      || DECL_IN_SYSTEM_HEADER (TYPE_MAIN_DECL (type)))
    return;


  if (CLASSTYPE_VISIBILITY_SPECIFIED (type))
    vis = VISIBILITY_INTERNAL;

  for (t = TYPE_FIELDS (type); t; t = TREE_CHAIN (t))
    if (TREE_CODE (t) == FIELD_DECL && TREE_TYPE (t) != error_mark_node)
      {
 tree ftype = strip_array_types (TREE_TYPE (t));
 int subvis = type_visibility (ftype);

 if (subvis == VISIBILITY_ANON)
   {
     if (!in_main_input_context ())
       warning (0, "%qT has a field %qD whose type uses the anonymous namespace",

     type, t);
   }
 else if (IS_AGGR_TYPE (ftype)
   && vis < VISIBILITY_HIDDEN
   && subvis >= VISIBILITY_HIDDEN)
   warning (OPT_Wattributes, "%qT declared with greater visibility than the type of its field %qD",

     type, t);
      }

  binfo = TYPE_BINFO (type);
  for (i = 0; BINFO_BASE_ITERATE (binfo, i, t); ++i)
    {
      int subvis = type_visibility (TREE_TYPE (t));

      if (subvis == VISIBILITY_ANON)
        {
   if (!in_main_input_context())
     warning (0, "%qT has a base %qT whose type uses the anonymous namespace",

   type, TREE_TYPE (t));
 }
      else if (vis < VISIBILITY_HIDDEN
        && subvis >= VISIBILITY_HIDDEN)
 warning (OPT_Wattributes, "%qT declared with greater visibility than its base %qT",

   type, TREE_TYPE (t));
    }
}
