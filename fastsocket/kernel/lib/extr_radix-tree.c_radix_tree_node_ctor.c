
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {int dummy; } ;


 int memset (void*,int ,int) ;

__attribute__((used)) static void
radix_tree_node_ctor(void *node)
{
 memset(node, 0, sizeof(struct radix_tree_node));
}
