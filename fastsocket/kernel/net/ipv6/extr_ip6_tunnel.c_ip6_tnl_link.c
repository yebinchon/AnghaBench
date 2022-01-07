
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_tnl_net {int dummy; } ;
struct ip6_tnl {struct ip6_tnl* next; int parms; } ;


 struct ip6_tnl** ip6_tnl_bucket (struct ip6_tnl_net*,int *) ;
 int ip6_tnl_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void
ip6_tnl_link(struct ip6_tnl_net *ip6n, struct ip6_tnl *t)
{
 struct ip6_tnl **tp = ip6_tnl_bucket(ip6n, &t->parms);

 t->next = *tp;
 write_lock_bh(&ip6_tnl_lock);
 *tp = t;
 write_unlock_bh(&ip6_tnl_lock);
}
