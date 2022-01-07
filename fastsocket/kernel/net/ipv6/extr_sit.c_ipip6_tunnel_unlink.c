
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_net {int dummy; } ;
struct ip_tunnel {struct ip_tunnel* next; } ;


 struct ip_tunnel** ipip6_bucket (struct sit_net*,struct ip_tunnel*) ;
 int ipip6_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void ipip6_tunnel_unlink(struct sit_net *sitn, struct ip_tunnel *t)
{
 struct ip_tunnel **tp;

 for (tp = ipip6_bucket(sitn, t); *tp; tp = &(*tp)->next) {
  if (t == *tp) {
   write_lock_bh(&ipip6_lock);
   *tp = t->next;
   write_unlock_bh(&ipip6_lock);
   break;
  }
 }
}
