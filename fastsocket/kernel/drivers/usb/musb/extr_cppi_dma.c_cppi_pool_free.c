
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cppi_descriptor {int dma; } ;
struct TYPE_2__ {int status; } ;
struct cppi_channel {struct cppi_descriptor* last_processed; struct cppi* controller; TYPE_1__ channel; } ;
struct cppi {int pool; } ;


 int MUSB_DMA_STATUS_UNKNOWN ;
 struct cppi_descriptor* cppi_bd_alloc (struct cppi_channel*) ;
 int cppi_channel_abort (TYPE_1__*) ;
 int dma_pool_free (int ,struct cppi_descriptor*,int ) ;

__attribute__((used)) static void cppi_pool_free(struct cppi_channel *c)
{
 struct cppi *cppi = c->controller;
 struct cppi_descriptor *bd;

 (void) cppi_channel_abort(&c->channel);
 c->channel.status = MUSB_DMA_STATUS_UNKNOWN;
 c->controller = ((void*)0);


 bd = c->last_processed;
 do {
  if (bd)
   dma_pool_free(cppi->pool, bd, bd->dma);
  bd = cppi_bd_alloc(c);
 } while (bd);
 c->last_processed = ((void*)0);
}
