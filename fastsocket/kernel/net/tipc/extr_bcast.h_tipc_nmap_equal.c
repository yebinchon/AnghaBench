
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node_map {int dummy; } ;


 int memcmp (struct tipc_node_map*,struct tipc_node_map*,int) ;

__attribute__((used)) static inline int tipc_nmap_equal(struct tipc_node_map *nm_a, struct tipc_node_map *nm_b)
{
 return !memcmp(nm_a, nm_b, sizeof(*nm_a));
}
