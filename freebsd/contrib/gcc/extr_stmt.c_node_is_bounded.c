
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int case_node_ptr ;


 scalar_t__ node_has_high_bound (int ,int ) ;
 scalar_t__ node_has_low_bound (int ,int ) ;

__attribute__((used)) static int
node_is_bounded (case_node_ptr node, tree index_type)
{
  return (node_has_low_bound (node, index_type)
   && node_has_high_bound (node, index_type));
}
