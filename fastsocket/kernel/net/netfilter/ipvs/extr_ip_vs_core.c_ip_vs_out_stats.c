
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_8__ {int outbytes; int outpkts; } ;
struct TYPE_9__ {int lock; TYPE_1__ ustats; } ;
struct ip_vs_dest {int flags; TYPE_5__* svc; TYPE_2__ stats; } ;
struct ip_vs_conn {struct ip_vs_dest* dest; } ;
struct TYPE_13__ {int outbytes; int outpkts; } ;
struct TYPE_14__ {int lock; TYPE_6__ ustats; } ;
struct TYPE_10__ {int outbytes; int outpkts; } ;
struct TYPE_11__ {int lock; TYPE_3__ ustats; } ;
struct TYPE_12__ {TYPE_4__ stats; } ;


 int IP_VS_DEST_F_AVAILABLE ;
 TYPE_7__ ip_vs_stats ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
ip_vs_out_stats(struct ip_vs_conn *cp, struct sk_buff *skb)
{
 struct ip_vs_dest *dest = cp->dest;
 if (dest && (dest->flags & IP_VS_DEST_F_AVAILABLE)) {
  spin_lock(&dest->stats.lock);
  dest->stats.ustats.outpkts++;
  dest->stats.ustats.outbytes += skb->len;
  spin_unlock(&dest->stats.lock);

  spin_lock(&dest->svc->stats.lock);
  dest->svc->stats.ustats.outpkts++;
  dest->svc->stats.ustats.outbytes += skb->len;
  spin_unlock(&dest->svc->stats.lock);

  spin_lock(&ip_vs_stats.lock);
  ip_vs_stats.ustats.outpkts++;
  ip_vs_stats.ustats.outbytes += skb->len;
  spin_unlock(&ip_vs_stats.lock);
 }
}
