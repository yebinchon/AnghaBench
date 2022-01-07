
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASS_TYPE_P (int ) ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ PUBLICLY_UNIQUELY_DERIVED_P (int ,int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VOID_TYPE ;
 int at_least_as_qualified_p (int ,int ) ;
 int non_reference (int ) ;

__attribute__((used)) static int
can_convert_eh (tree to, tree from)
{
  to = non_reference (to);
  from = non_reference (from);

  if (TREE_CODE (to) == POINTER_TYPE && TREE_CODE (from) == POINTER_TYPE)
    {
      to = TREE_TYPE (to);
      from = TREE_TYPE (from);

      if (! at_least_as_qualified_p (to, from))
 return 0;

      if (TREE_CODE (to) == VOID_TYPE)
 return 1;


    }

  if (CLASS_TYPE_P (to) && CLASS_TYPE_P (from)
      && PUBLICLY_UNIQUELY_DERIVED_P (to, from))
    return 1;

  return 0;
}
