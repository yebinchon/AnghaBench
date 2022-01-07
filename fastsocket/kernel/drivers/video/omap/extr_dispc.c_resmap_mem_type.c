
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long OMAP2_SRAM_SIZE ;
 unsigned long OMAP2_SRAM_START ;
 int OMAPFB_MEMTYPE_SDRAM ;
 int OMAPFB_MEMTYPE_SRAM ;

__attribute__((used)) static inline int resmap_mem_type(unsigned long start)
{
 if (start >= OMAP2_SRAM_START &&
     start < OMAP2_SRAM_START + OMAP2_SRAM_SIZE)
  return OMAPFB_MEMTYPE_SRAM;
 else
  return OMAPFB_MEMTYPE_SDRAM;
}
