
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buffparms {int dma; } ;


 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int) ;
 int disable_dma (int) ;
 int enable_dma (int) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int,unsigned long) ;
 int set_dma_count (int,int) ;
 int set_dma_mode (int,int) ;

__attribute__((used)) static int sound_start_dma(struct dma_buffparms *dmap, unsigned long physaddr, int count, int dma_mode)
{
 unsigned long flags;
 int chan = dmap->dma;



 flags = claim_dma_lock();
 disable_dma(chan);
 clear_dma_ff(chan);
 set_dma_mode(chan, dma_mode);
 set_dma_addr(chan, physaddr);
 set_dma_count(chan, count);
 enable_dma(chan);
 release_dma_lock(flags);

 return 0;
}
