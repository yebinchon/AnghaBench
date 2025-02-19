
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_txb {int nr_frags; int frag_size; TYPE_1__** fragments; } ;
struct TYPE_3__ {struct ieee80211_txb* cb; } ;


 TYPE_1__* dev_alloc_skb (int) ;
 int dev_kfree_skb_any (TYPE_1__*) ;
 int kfree (struct ieee80211_txb*) ;
 struct ieee80211_txb* kmalloc (int,int) ;
 int memset (struct ieee80211_txb*,int ,int) ;
 scalar_t__ unlikely (int) ;

struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
       int gfp_mask)
{
 struct ieee80211_txb *txb;
 int i;
 txb = kmalloc(
  sizeof(struct ieee80211_txb) + (sizeof(u8*) * nr_frags),
  gfp_mask);
 if (!txb)
  return ((void*)0);

 memset(txb, 0, sizeof(struct ieee80211_txb));
 txb->nr_frags = nr_frags;
 txb->frag_size = txb_size;

 for (i = 0; i < nr_frags; i++) {
  txb->fragments[i] = dev_alloc_skb(txb_size);
  if (unlikely(!txb->fragments[i])) {
   i--;
   break;
  }
  memset(txb->fragments[i]->cb, 0, sizeof(txb->fragments[i]->cb));
 }
 if (unlikely(i != nr_frags)) {
  while (i >= 0)
   dev_kfree_skb_any(txb->fragments[i--]);
  kfree(txb);
  return ((void*)0);
 }
 return txb;
}
