
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ OFFSET_TYPE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_OFFSET_BASETYPE (int ) ;
 int same_type_ignoring_top_level_qualifiers_p (int ,int ) ;
 scalar_t__ same_type_p (int ,int ) ;

bool
comp_ptr_ttypes_const (tree to, tree from)
{
  for (; ; to = TREE_TYPE (to), from = TREE_TYPE (from))
    {
      if (TREE_CODE (to) != TREE_CODE (from))
 return 0;

      if (TREE_CODE (from) == OFFSET_TYPE
   && same_type_p (TYPE_OFFSET_BASETYPE (from),
     TYPE_OFFSET_BASETYPE (to)))
   continue;

      if (TREE_CODE (to) != POINTER_TYPE)
 return same_type_ignoring_top_level_qualifiers_p (to, from);
    }
}
