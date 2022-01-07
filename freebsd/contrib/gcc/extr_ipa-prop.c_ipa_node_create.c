
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipa_node {int dummy; } ;
struct cgraph_node {int aux; } ;


 int xcalloc (int,int) ;

void
ipa_node_create (struct cgraph_node *node)
{
  node->aux = xcalloc (1, sizeof (struct ipa_node));
}
