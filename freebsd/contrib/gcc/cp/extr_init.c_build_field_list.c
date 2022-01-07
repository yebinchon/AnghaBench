
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ANON_AGGR_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_ARTIFICIAL (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 int NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ tree_cons (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static tree
build_field_list (tree t, tree list, int *uses_unions_p)
{
  tree fields;

  *uses_unions_p = 0;


  if (TREE_CODE (t) == UNION_TYPE)
    *uses_unions_p = 1;

  for (fields = TYPE_FIELDS (t); fields; fields = TREE_CHAIN (fields))
    {

      if (TREE_CODE (fields) != FIELD_DECL || DECL_ARTIFICIAL (fields))
 continue;


      if (TREE_CODE (TREE_TYPE (fields)) == UNION_TYPE)
 *uses_unions_p = 1;




      if (ANON_AGGR_TYPE_P (TREE_TYPE (fields)))
 {


   list = tree_cons (fields, NULL_TREE, list);

   list = build_field_list (TREE_TYPE (fields), list,
       uses_unions_p);
 }

      else if (DECL_NAME (fields))
 list = tree_cons (fields, NULL_TREE, list);
    }

  return list;
}
