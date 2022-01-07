
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ POINTER_TYPE ;
 scalar_t__ PUBLICLY_UNIQUELY_DERIVED_P (int ,int ) ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ cp_type_quals (int ) ;
 scalar_t__ same_type_p (int ,int ) ;

__attribute__((used)) static bool
comp_except_types (tree a, tree b, bool exact)
{
  if (same_type_p (a, b))
    return 1;
  else if (!exact)
    {
      if (cp_type_quals (a) || cp_type_quals (b))
 return 0;

      if (TREE_CODE (a) == POINTER_TYPE
   && TREE_CODE (b) == POINTER_TYPE)
 {
   a = TREE_TYPE (a);
   b = TREE_TYPE (b);
   if (cp_type_quals (a) || cp_type_quals (b))
     return 0;
 }

      if (TREE_CODE (a) != RECORD_TYPE
   || TREE_CODE (b) != RECORD_TYPE)
 return 0;

      if (PUBLICLY_UNIQUELY_DERIVED_P (a, b))
 return 1;
    }
  return 0;
}
