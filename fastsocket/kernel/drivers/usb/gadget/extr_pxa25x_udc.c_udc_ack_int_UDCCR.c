
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int UDCCR ;
 int UDCCR_MASK_BITS ;

__attribute__((used)) static inline void udc_ack_int_UDCCR(int mask)
{

 __u32 udccr = UDCCR & UDCCR_MASK_BITS;

 UDCCR = udccr | (mask & ~UDCCR_MASK_BITS);
}
