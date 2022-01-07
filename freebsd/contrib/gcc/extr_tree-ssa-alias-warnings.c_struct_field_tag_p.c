
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ STRUCT_FIELD_TAG ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static bool
struct_field_tag_p (tree var)
{
  return TREE_CODE (var) == STRUCT_FIELD_TAG;
}
