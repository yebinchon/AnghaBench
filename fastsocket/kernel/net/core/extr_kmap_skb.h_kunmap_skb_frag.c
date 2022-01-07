
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_SKB_DATA_SOFTIRQ ;
 int kunmap_atomic (void*,int ) ;
 int local_bh_enable () ;

__attribute__((used)) static inline void kunmap_skb_frag(void *vaddr)
{
 kunmap_atomic(vaddr, KM_SKB_DATA_SOFTIRQ);



}
