
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ POINTER_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;

__attribute__((used)) static int
count_stars (tree* type_ptr)
{
  tree type = *type_ptr;
  int i = 0;
  type = TYPE_MAIN_VARIANT (type);
  while (POINTER_TYPE_P (type))
    {
      type = TYPE_MAIN_VARIANT (TREE_TYPE (type));
      i++;
    }

  *type_ptr = type;
  return i;
}
