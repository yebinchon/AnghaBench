
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int page; } ;
typedef TYPE_1__ skb_frag_t ;


 int BUG_ON (int ) ;
 int KM_SKB_DATA_SOFTIRQ ;
 int in_irq () ;
 void* kmap_atomic (int ,int ) ;
 int local_bh_disable () ;

__attribute__((used)) static inline void *kmap_skb_frag(const skb_frag_t *frag)
{





 return kmap_atomic(frag->page, KM_SKB_DATA_SOFTIRQ);
}
