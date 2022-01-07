
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum als4k_gcr_t { ____Placeholder_als4k_gcr_t } als4k_gcr_t ;


 int ALS4K_IOB_0C_GCR_INDEX ;
 int ALS4K_IOD_08_GCR_DATA ;
 int snd_als4k_iobase_writeb (unsigned long,int ,int) ;
 int snd_als4k_iobase_writel (unsigned long,int ,int ) ;

__attribute__((used)) static inline void snd_als4k_gcr_write_addr(unsigned long iobase,
       enum als4k_gcr_t reg,
       u32 val)
{
 snd_als4k_iobase_writeb(iobase, ALS4K_IOB_0C_GCR_INDEX, reg);
 snd_als4k_iobase_writel(iobase, ALS4K_IOD_08_GCR_DATA, val);
}
