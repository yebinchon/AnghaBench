
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_4__ {TYPE_1__* s; } ;
struct TYPE_3__ {scalar_t__* elts; int len; } ;


 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 TYPE_2__* TYPE_LANG_SPECIFIC (scalar_t__) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
lookup_field (tree decl, tree component)
{
  tree type = TREE_TYPE (decl);
  tree field;






  if (TYPE_LANG_SPECIFIC (type) && TYPE_LANG_SPECIFIC (type)->s)
    {
      int bot, top, half;
      tree *field_array = &TYPE_LANG_SPECIFIC (type)->s->elts[0];

      field = TYPE_FIELDS (type);
      bot = 0;
      top = TYPE_LANG_SPECIFIC (type)->s->len;
      while (top - bot > 1)
 {
   half = (top - bot + 1) >> 1;
   field = field_array[bot+half];

   if (DECL_NAME (field) == NULL_TREE)
     {

       while (DECL_NAME (field_array[bot]) == NULL_TREE)
  {
    field = field_array[bot++];
    if (TREE_CODE (TREE_TYPE (field)) == RECORD_TYPE
        || TREE_CODE (TREE_TYPE (field)) == UNION_TYPE)
      {
        tree anon = lookup_field (field, component);

        if (anon)
   return tree_cons (NULL_TREE, field, anon);
      }
  }


       if (bot > top)
  return NULL_TREE;


       continue;
     }

   if (DECL_NAME (field) == component)
     break;
   if (DECL_NAME (field) < component)
     bot += half;
   else
     top = bot + half;
 }

      if (DECL_NAME (field_array[bot]) == component)
 field = field_array[bot];
      else if (DECL_NAME (field) != component)
 return NULL_TREE;
    }
  else
    {
      for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
 {
   if (DECL_NAME (field) == NULL_TREE
       && (TREE_CODE (TREE_TYPE (field)) == RECORD_TYPE
    || TREE_CODE (TREE_TYPE (field)) == UNION_TYPE))
     {
       tree anon = lookup_field (field, component);

       if (anon)
  return tree_cons (NULL_TREE, field, anon);
     }

   if (DECL_NAME (field) == component)
     break;
 }

      if (field == NULL_TREE)
 return NULL_TREE;
    }

  return tree_cons (NULL_TREE, field, NULL_TREE);
}
