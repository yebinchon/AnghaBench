
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int nd_ipv4_port; } ;
typedef int ssize_t ;


 int ntohs (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t o2nm_node_ipv4_port_read(struct o2nm_node *node, char *page)
{
 return sprintf(page, "%u\n", ntohs(node->nd_ipv4_port));
}
