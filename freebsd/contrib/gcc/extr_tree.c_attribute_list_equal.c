
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ attribute_list_contained (int ,int ) ;

int
attribute_list_equal (tree l1, tree l2)
{
  return attribute_list_contained (l1, l2)
  && attribute_list_contained (l2, l1);
}
