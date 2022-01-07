
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_prl_entry {scalar_t__ addr; int flags; struct ip_tunnel_prl_entry* next; } ;
struct ip_tunnel_prl {scalar_t__ addr; int flags; } ;
struct ip_tunnel {int prl_count; struct ip_tunnel_prl_entry* prl; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOBUFS ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INADDR_ANY ;
 scalar_t__ htonl (int ) ;
 int ipip6_lock ;
 struct ip_tunnel_prl_entry* kzalloc (int,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int
ipip6_tunnel_add_prl(struct ip_tunnel *t, struct ip_tunnel_prl *a, int chg)
{
 struct ip_tunnel_prl_entry *p;
 int err = 0;

 if (a->addr == htonl(INADDR_ANY))
  return -EINVAL;

 write_lock(&ipip6_lock);

 for (p = t->prl; p; p = p->next) {
  if (p->addr == a->addr) {
   if (chg)
    goto update;
   err = -EEXIST;
   goto out;
  }
 }

 if (chg) {
  err = -ENXIO;
  goto out;
 }

 p = kzalloc(sizeof(struct ip_tunnel_prl_entry), GFP_KERNEL);
 if (!p) {
  err = -ENOBUFS;
  goto out;
 }

 p->next = t->prl;
 t->prl = p;
 t->prl_count++;
update:
 p->addr = a->addr;
 p->flags = a->flags;
out:
 write_unlock(&ipip6_lock);
 return err;
}
