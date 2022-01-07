
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ready; } ;
struct cs4297a_state {TYPE_1__ dma_adc; } ;



__attribute__((used)) static int prog_dmabuf_adc(struct cs4297a_state *s)
{
 s->dma_adc.ready = 1;
 return 0;
}
