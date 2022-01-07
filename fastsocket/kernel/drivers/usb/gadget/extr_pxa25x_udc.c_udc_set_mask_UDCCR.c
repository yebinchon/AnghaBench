
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UDCCR ;
 int UDCCR_MASK_BITS ;

__attribute__((used)) static inline void udc_set_mask_UDCCR(int mask)
{
 UDCCR = (UDCCR & UDCCR_MASK_BITS) | (mask & UDCCR_MASK_BITS);
}
