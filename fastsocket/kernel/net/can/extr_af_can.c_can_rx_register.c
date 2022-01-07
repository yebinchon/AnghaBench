
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct receiver {void (* func ) (struct sk_buff*,void*) ;char* ident; int list; void* data; scalar_t__ matches; void* mask; void* can_id; } ;
struct net_device {int dummy; } ;
struct hlist_head {int dummy; } ;
struct dev_rcv_lists {int entries; } ;
typedef void* canid_t ;
struct TYPE_2__ {scalar_t__ rcv_entries; scalar_t__ rcv_entries_max; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__ can_pstats ;
 int can_rcvlists_lock ;
 struct dev_rcv_lists* find_dev_rcv_lists (struct net_device*) ;
 struct hlist_head* find_rcv_list (void**,void**,struct dev_rcv_lists*) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 struct receiver* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct receiver*) ;
 int rcv_cache ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int can_rx_register(struct net_device *dev, canid_t can_id, canid_t mask,
      void (*func)(struct sk_buff *, void *), void *data,
      char *ident)
{
 struct receiver *r;
 struct hlist_head *rl;
 struct dev_rcv_lists *d;
 int err = 0;



 r = kmem_cache_alloc(rcv_cache, GFP_KERNEL);
 if (!r)
  return -ENOMEM;

 spin_lock(&can_rcvlists_lock);

 d = find_dev_rcv_lists(dev);
 if (d) {
  rl = find_rcv_list(&can_id, &mask, d);

  r->can_id = can_id;
  r->mask = mask;
  r->matches = 0;
  r->func = func;
  r->data = data;
  r->ident = ident;

  hlist_add_head_rcu(&r->list, rl);
  d->entries++;

  can_pstats.rcv_entries++;
  if (can_pstats.rcv_entries_max < can_pstats.rcv_entries)
   can_pstats.rcv_entries_max = can_pstats.rcv_entries;
 } else {
  kmem_cache_free(rcv_cache, r);
  err = -ENODEV;
 }

 spin_unlock(&can_rcvlists_lock);

 return err;
}
