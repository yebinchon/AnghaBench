
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_prl_entry {scalar_t__ addr; struct ip_tunnel_prl_entry* next; } ;
struct ip_tunnel_prl {scalar_t__ addr; } ;
struct ip_tunnel {int prl_count; struct ip_tunnel_prl_entry* prl; } ;


 int ENXIO ;
 int INADDR_ANY ;
 scalar_t__ htonl (int ) ;
 int ipip6_lock ;
 int kfree (struct ip_tunnel_prl_entry*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int
ipip6_tunnel_del_prl(struct ip_tunnel *t, struct ip_tunnel_prl *a)
{
 struct ip_tunnel_prl_entry *x, **p;
 int err = 0;

 write_lock(&ipip6_lock);

 if (a && a->addr != htonl(INADDR_ANY)) {
  for (p = &t->prl; *p; p = &(*p)->next) {
   if ((*p)->addr == a->addr) {
    x = *p;
    *p = x->next;
    kfree(x);
    t->prl_count--;
    goto out;
   }
  }
  err = -ENXIO;
 } else {
  while (t->prl) {
   x = t->prl;
   t->prl = t->prl->next;
   kfree(x);
   t->prl_count--;
  }
 }
out:
 write_unlock(&ipip6_lock);
 return err;
}
