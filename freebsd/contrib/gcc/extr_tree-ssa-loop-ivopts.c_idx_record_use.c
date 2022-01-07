
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ARRAY_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int array_ref_element_size (int ) ;
 int array_ref_low_bound (int ) ;
 int find_interesting_uses_op (void*,int ) ;

__attribute__((used)) static bool
idx_record_use (tree base, tree *idx,
  void *data)
{
  find_interesting_uses_op (data, *idx);
  if (TREE_CODE (base) == ARRAY_REF)
    {
      find_interesting_uses_op (data, array_ref_element_size (base));
      find_interesting_uses_op (data, array_ref_low_bound (base));
    }
  return 1;
}
