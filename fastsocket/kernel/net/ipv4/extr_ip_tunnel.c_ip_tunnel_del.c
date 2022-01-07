
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel {int hash_node; } ;


 int hlist_del_init_rcu (int *) ;

__attribute__((used)) static void ip_tunnel_del(struct ip_tunnel *t)
{
 hlist_del_init_rcu(&t->hash_node);
}
