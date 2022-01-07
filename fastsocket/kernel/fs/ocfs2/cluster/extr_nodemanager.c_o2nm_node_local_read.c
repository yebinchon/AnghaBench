
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int nd_local; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t o2nm_node_local_read(struct o2nm_node *node, char *page)
{
 return sprintf(page, "%d\n", node->nd_local);
}
