
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int pp_c_whitespace (int *) ;
 int strip_pointer_operator (int ) ;

void
pp_c_space_for_pointer_operator (c_pretty_printer *pp, tree t)
{
  if (POINTER_TYPE_P (t))
    {
      tree pointee = strip_pointer_operator (TREE_TYPE (t));
      if (TREE_CODE (pointee) != ARRAY_TYPE
   && TREE_CODE (pointee) != FUNCTION_TYPE)
 pp_c_whitespace (pp);
    }
}
