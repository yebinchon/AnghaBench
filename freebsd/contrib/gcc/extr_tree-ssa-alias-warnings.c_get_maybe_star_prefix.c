
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int gcc_assert (int ) ;

__attribute__((used)) static const char *
get_maybe_star_prefix (tree object, bool is_ptr)
{
  gcc_assert (object);
  return (is_ptr
          && TREE_CODE (TREE_TYPE (object)) == POINTER_TYPE) ? "*" : "";
}
