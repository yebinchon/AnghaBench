
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dma_info {int * dma_irq; int * dma_channel; int ssi_srx_phys; int ssi_stx_phys; } ;
struct TYPE_2__ {scalar_t__* assigned; int * irq; int * dma_channel; int ssi_srx_phys; int ssi_stx_phys; } ;


 TYPE_1__ dma_global_data ;

int fsl_dma_configure(struct fsl_dma_info *dma_info)
{
 static int initialized;


 if (initialized)
  return 0;

 dma_global_data.ssi_stx_phys = dma_info->ssi_stx_phys;
 dma_global_data.ssi_srx_phys = dma_info->ssi_srx_phys;
 dma_global_data.dma_channel[0] = dma_info->dma_channel[0];
 dma_global_data.dma_channel[1] = dma_info->dma_channel[1];
 dma_global_data.irq[0] = dma_info->dma_irq[0];
 dma_global_data.irq[1] = dma_info->dma_irq[1];
 dma_global_data.assigned[0] = 0;
 dma_global_data.assigned[1] = 0;

 initialized = 1;
 return 1;
}
