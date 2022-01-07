
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {TYPE_1__* header_ops; } ;
struct neighbour {int nud_state; TYPE_2__* ops; struct hh_cache* hh; } ;
struct hh_cache {scalar_t__ hh_type; int hh_refcnt; int hh_output; struct hh_cache* hh_next; int hh_lock; } ;
struct dst_entry {struct hh_cache* hh; struct net_device* dev; } ;
typedef scalar_t__ __be16 ;
struct TYPE_4__ {int output; int hh_output; } ;
struct TYPE_3__ {scalar_t__ (* cache ) (struct neighbour*,struct hh_cache*) ;} ;


 int GFP_ATOMIC ;
 int NUD_CONNECTED ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int kfree (struct hh_cache*) ;
 struct hh_cache* kzalloc (int,int ) ;
 int seqlock_init (int *) ;
 scalar_t__ stub1 (struct neighbour*,struct hh_cache*) ;

__attribute__((used)) static void neigh_hh_init(struct neighbour *n, struct dst_entry *dst,
     __be16 protocol)
{
 struct hh_cache *hh;
 struct net_device *dev = dst->dev;

 for (hh = n->hh; hh; hh = hh->hh_next)
  if (hh->hh_type == protocol)
   break;

 if (!hh && (hh = kzalloc(sizeof(*hh), GFP_ATOMIC)) != ((void*)0)) {
  seqlock_init(&hh->hh_lock);
  hh->hh_type = protocol;
  atomic_set(&hh->hh_refcnt, 0);
  hh->hh_next = ((void*)0);

  if (dev->header_ops->cache(n, hh)) {
   kfree(hh);
   hh = ((void*)0);
  } else {
   atomic_inc(&hh->hh_refcnt);
   hh->hh_next = n->hh;
   n->hh = hh;
   if (n->nud_state & NUD_CONNECTED)
    hh->hh_output = n->ops->hh_output;
   else
    hh->hh_output = n->ops->output;
  }
 }
 if (hh) {
  atomic_inc(&hh->hh_refcnt);
  dst->hh = hh;
 }
}
