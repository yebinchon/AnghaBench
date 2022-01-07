
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int dma_addr_t ;



__attribute__((used)) static inline void unpack_pointer(dma_addr_t ptr, u32 *r_low, u32 *r_high)
{
 *r_low = (u32)(ptr & 0xffffffff);



 *r_high = (u32)((u64)ptr>>32);

}
