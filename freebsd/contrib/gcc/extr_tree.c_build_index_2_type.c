
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int build_range_type (int ,int ,int ) ;
 int sizetype ;

tree
build_index_2_type (tree lowval, tree highval)
{
  return build_range_type (sizetype, lowval, highval);
}
