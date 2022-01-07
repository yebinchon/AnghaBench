
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int LOOKUP_NORMAL ;
 int NULL_TREE ;
 int can_convert_arg (int ,int ,int ,int ) ;

bool
can_convert (tree to, tree from)
{
  return can_convert_arg (to, from, NULL_TREE, LOOKUP_NORMAL);
}
