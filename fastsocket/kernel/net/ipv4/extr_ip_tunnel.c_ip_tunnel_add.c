
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {int hash_node; int parms; } ;
struct hlist_head {int dummy; } ;


 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 struct hlist_head* ip_bucket (struct ip_tunnel_net*,int *) ;

__attribute__((used)) static void ip_tunnel_add(struct ip_tunnel_net *itn, struct ip_tunnel *t)
{
 struct hlist_head *head = ip_bucket(itn, &t->parms);

 hlist_add_head_rcu(&t->hash_node, head);
}
