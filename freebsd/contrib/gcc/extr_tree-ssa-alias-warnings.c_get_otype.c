
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int POINTER_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 int gcc_assert (int ) ;
 int get_main_type (int ) ;

__attribute__((used)) static tree
get_otype (tree object, bool is_ptr)
{
  tree otype = TREE_TYPE (object);

  if (is_ptr)
    {
      gcc_assert (POINTER_TYPE_P (otype));
      otype = TREE_TYPE (otype);
    }
  return get_main_type (otype);
}
