
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pneigh_entry {struct pneigh_entry* next; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct neigh_table {int (* pdestructor ) (struct pneigh_entry*) ;struct pneigh_entry** phash_buckets; } ;


 int ENOENT ;
 size_t PNEIGH_HASHMASK ;
 int dev_put (struct net_device*) ;
 int kfree (struct pneigh_entry*) ;
 int pneigh_net (struct pneigh_entry*) ;
 int release_net (int ) ;
 int stub1 (struct pneigh_entry*) ;

__attribute__((used)) static int pneigh_ifdown(struct neigh_table *tbl, struct net_device *dev)
{
 struct pneigh_entry *n, **np;
 u32 h;

 for (h = 0; h <= PNEIGH_HASHMASK; h++) {
  np = &tbl->phash_buckets[h];
  while ((n = *np) != ((void*)0)) {
   if (!dev || n->dev == dev) {
    *np = n->next;
    if (tbl->pdestructor)
     tbl->pdestructor(n);
    if (n->dev)
     dev_put(n->dev);
    release_net(pneigh_net(n));
    kfree(n);
    continue;
   }
   np = &n->next;
  }
 }
 return -ENOENT;
}
