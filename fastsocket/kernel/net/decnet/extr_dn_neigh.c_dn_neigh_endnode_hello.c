
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; scalar_t__ data; } ;
struct neighbour {int nud_state; int lock; int ha; TYPE_1__* dev; void* updated; void* used; } ;
struct endnode_hello_message {int blksize; int id; } ;
struct dn_neigh {int flags; scalar_t__ priority; int blksize; } ;
typedef int __le16 ;
struct TYPE_4__ {int h_source; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ ARPHRD_ETHER ;
 int DN_NDFLAG_R1 ;
 int DN_NDFLAG_R2 ;
 int ETH_ALEN ;
 int NUD_PERMANENT ;
 struct neighbour* __neigh_lookup (int *,int *,int ,int) ;
 int dn_eth2dn (int ) ;
 int dn_neigh_table ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 void* jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int *,int ) ;
 int neigh_release (struct neighbour*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int dn_neigh_endnode_hello(struct sk_buff *skb)
{
 struct endnode_hello_message *msg = (struct endnode_hello_message *)skb->data;
 struct neighbour *neigh;
 struct dn_neigh *dn;
 __le16 src;

 src = dn_eth2dn(msg->id);

 neigh = __neigh_lookup(&dn_neigh_table, &src, skb->dev, 1);

 dn = (struct dn_neigh *)neigh;

 if (neigh) {
  write_lock(&neigh->lock);

  neigh->used = jiffies;

  if (!(neigh->nud_state & NUD_PERMANENT)) {
   neigh->updated = jiffies;

   if (neigh->dev->type == ARPHRD_ETHER)
    memcpy(neigh->ha, &eth_hdr(skb)->h_source, ETH_ALEN);
   dn->flags &= ~(DN_NDFLAG_R1 | DN_NDFLAG_R2);
   dn->blksize = le16_to_cpu(msg->blksize);
   dn->priority = 0;
  }

  write_unlock(&neigh->lock);
  neigh_release(neigh);
 }

 kfree_skb(skb);
 return 0;
}
