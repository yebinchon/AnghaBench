
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv64; } ;
struct sk_buff {TYPE_1__ tstamp; } ;


 int __net_timestamp (struct sk_buff*) ;
 scalar_t__ atomic_read (int *) ;
 int netstamp_needed ;

__attribute__((used)) static inline void net_timestamp(struct sk_buff *skb)
{
 if (atomic_read(&netstamp_needed))
  __net_timestamp(skb);
 else
  skb->tstamp.tv64 = 0;
}
