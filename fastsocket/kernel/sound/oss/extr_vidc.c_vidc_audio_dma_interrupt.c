
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int DMAbuf_outputintr (int ,int) ;
 int IRQ_HANDLED ;
 int vidc_adev ;

__attribute__((used)) static irqreturn_t vidc_audio_dma_interrupt(void)
{
 DMAbuf_outputintr(vidc_adev, 1);
 return IRQ_HANDLED;
}
