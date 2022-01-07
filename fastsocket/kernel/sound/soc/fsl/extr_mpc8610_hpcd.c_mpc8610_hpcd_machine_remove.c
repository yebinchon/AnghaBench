
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct mpc8610_hpcd_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mpc8610_hpcd_data {int ssi_id; TYPE_2__* guts; int * dma_channel_id; int dma_id; } ;
struct TYPE_4__ {int pmuxcr; } ;


 int CCSR_GUTS_PMUXCR_SSI1_LA ;
 int CCSR_GUTS_PMUXCR_SSI1_MASK ;
 int CCSR_GUTS_PMUXCR_SSI2_LA ;
 int CCSR_GUTS_PMUXCR_SSI2_MASK ;
 int clrsetbits_be32 (int *,int ,int ) ;
 int guts_set_dmacr (TYPE_2__*,int ,int ,int ) ;

int mpc8610_hpcd_machine_remove(struct platform_device *sound_device)
{
 struct mpc8610_hpcd_data *machine_data =
  sound_device->dev.platform_data;



 guts_set_dmacr(machine_data->guts, machine_data->dma_id,
  machine_data->dma_channel_id[0], 0);
 guts_set_dmacr(machine_data->guts, machine_data->dma_id,
  machine_data->dma_channel_id[1], 0);

 switch (machine_data->ssi_id) {
 case 0:
  clrsetbits_be32(&machine_data->guts->pmuxcr,
   CCSR_GUTS_PMUXCR_SSI1_MASK, CCSR_GUTS_PMUXCR_SSI1_LA);
  break;
 case 1:
  clrsetbits_be32(&machine_data->guts->pmuxcr,
   CCSR_GUTS_PMUXCR_SSI2_MASK, CCSR_GUTS_PMUXCR_SSI2_LA);
  break;
 }

 return 0;
}
