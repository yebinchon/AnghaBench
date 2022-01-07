
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ QUAL_UNION_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ UNION_TYPE ;

__attribute__((used)) static bool
struct_class_union_p (tree type)
{
  return (TREE_CODE (type) == RECORD_TYPE
   || TREE_CODE (type) == UNION_TYPE
   || TREE_CODE (type) == QUAL_UNION_TYPE);
}
