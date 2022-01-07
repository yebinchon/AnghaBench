
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipip_net {int dummy; } ;
struct ip_tunnel {struct ip_tunnel* next; } ;


 struct ip_tunnel** ipip_bucket (struct ipip_net*,struct ip_tunnel*) ;
 int ipip_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void ipip_tunnel_unlink(struct ipip_net *ipn, struct ip_tunnel *t)
{
 struct ip_tunnel **tp;

 for (tp = ipip_bucket(ipn, t); *tp; tp = &(*tp)->next) {
  if (t == *tp) {
   write_lock_bh(&ipip_lock);
   *tp = t->next;
   write_unlock_bh(&ipip_lock);
   break;
  }
 }
}
