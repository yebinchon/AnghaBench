
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;
struct o2nm_node {int nd_ipv4_port; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ERANGE ;
 int htons (unsigned long) ;
 unsigned long simple_strtoul (char*,char**,int ) ;

__attribute__((used)) static ssize_t o2nm_node_ipv4_port_write(struct o2nm_node *node,
      const char *page, size_t count)
{
 unsigned long tmp;
 char *p = (char *)page;

 tmp = simple_strtoul(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 if (tmp == 0)
  return -EINVAL;
 if (tmp >= (u16)-1)
  return -ERANGE;

 node->nd_ipv4_port = htons(tmp);

 return count;
}
