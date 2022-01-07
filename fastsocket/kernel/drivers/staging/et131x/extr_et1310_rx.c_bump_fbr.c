
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ET_DMA10_MASK ;
 int ET_DMA10_WRAP ;

__attribute__((used)) static inline u32 bump_fbr(u32 *fbr, u32 limit)
{
        u32 v = *fbr;
        v++;




        if ((v & ET_DMA10_MASK) > limit) {
                v &= ~ET_DMA10_MASK;
                v ^= ET_DMA10_WRAP;
        }

        v &= (ET_DMA10_MASK|ET_DMA10_WRAP);
        *fbr = v;
        return v;
}
