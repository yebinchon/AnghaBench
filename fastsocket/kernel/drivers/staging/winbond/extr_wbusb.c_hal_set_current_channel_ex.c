
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wb35_reg {int M28_MacControl; } ;
struct hw_data {int Channel; int band; scalar_t__ SurpriseRemove; struct wb35_reg reg; } ;
typedef int s8 ;
struct TYPE_4__ {int band; int ChanNo; } ;
typedef TYPE_1__ ChanInfo ;


 int RFSynthesizer_SwitchingChannel (struct hw_data*,TYPE_1__) ;
 int Wb35Reg_WriteWithCallbackValue (struct hw_data*,int,int,int *,int) ;
 int printk (char*,int,int) ;

__attribute__((used)) static void
hal_set_current_channel_ex(struct hw_data *pHwData, ChanInfo channel)
{
 struct wb35_reg *reg = &pHwData->reg;

 if (pHwData->SurpriseRemove)
  return;

 printk("Going to channel: %d/%d\n", channel.band, channel.ChanNo);

 RFSynthesizer_SwitchingChannel(pHwData, channel);
 pHwData->Channel = channel.ChanNo;
 pHwData->band = channel.band;




 reg->M28_MacControl &= ~0xff;
 reg->M28_MacControl |= channel.ChanNo;
 Wb35Reg_WriteWithCallbackValue(pHwData, 0x0828, reg->M28_MacControl,
           (s8 *) & channel, sizeof(ChanInfo));
}
