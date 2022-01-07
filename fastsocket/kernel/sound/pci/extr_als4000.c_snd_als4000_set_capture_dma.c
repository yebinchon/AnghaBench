
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int dummy; } ;
typedef unsigned int dma_addr_t ;


 int ALS4K_GCRA2_FIFO2_PCIADDR ;
 int ALS4K_GCRA3_FIFO2_COUNT ;
 int snd_als4k_gcr_write (struct snd_sb*,int ,unsigned int) ;

__attribute__((used)) static inline void snd_als4000_set_capture_dma(struct snd_sb *chip,
            dma_addr_t addr, unsigned size)
{

 snd_als4k_gcr_write(chip, ALS4K_GCRA2_FIFO2_PCIADDR, addr);
 snd_als4k_gcr_write(chip, ALS4K_GCRA3_FIFO2_COUNT, (size-1));
}
