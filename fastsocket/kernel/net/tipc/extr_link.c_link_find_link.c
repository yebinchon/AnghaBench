
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {struct link** links; } ;
struct link_name {int addr_peer; int if_local; } ;
struct link {int name; } ;
struct bearer {size_t identity; } ;


 int link_name_validate (char const*,struct link_name*) ;
 scalar_t__ strcmp (int ,char const*) ;
 struct bearer* tipc_bearer_find_interface (int ) ;
 struct tipc_node* tipc_node_find (int ) ;

__attribute__((used)) static struct link *link_find_link(const char *name, struct tipc_node **node)
{
 struct link_name link_name_parts;
 struct bearer *b_ptr;
 struct link *l_ptr;

 if (!link_name_validate(name, &link_name_parts))
  return ((void*)0);

 b_ptr = tipc_bearer_find_interface(link_name_parts.if_local);
 if (!b_ptr)
  return ((void*)0);

 *node = tipc_node_find(link_name_parts.addr_peer);
 if (!*node)
  return ((void*)0);

 l_ptr = (*node)->links[b_ptr->identity];
 if (!l_ptr || strcmp(l_ptr->name, name))
  return ((void*)0);

 return l_ptr;
}
