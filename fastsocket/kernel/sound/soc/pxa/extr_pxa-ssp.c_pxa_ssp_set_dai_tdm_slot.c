
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {struct ssp_device* ssp; } ;
struct ssp_priv {TYPE_1__ dev; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {struct ssp_priv* private_data; } ;


 int SSCR0 ;
 unsigned int SSCR0_DSS ;
 unsigned int SSCR0_DataSize (int) ;
 unsigned int SSCR0_EDSS ;
 unsigned int SSCR0_MOD ;
 unsigned int SSCR0_SlotsPerFrm (int) ;
 int SSRSA ;
 int SSTSA ;
 unsigned int ssp_read_reg (struct ssp_device*,int ) ;
 int ssp_write_reg (struct ssp_device*,int ,unsigned int) ;

__attribute__((used)) static int pxa_ssp_set_dai_tdm_slot(struct snd_soc_dai *cpu_dai,
 unsigned int tx_mask, unsigned int rx_mask, int slots, int slot_width)
{
 struct ssp_priv *priv = cpu_dai->private_data;
 struct ssp_device *ssp = priv->dev.ssp;
 u32 sscr0;

 sscr0 = ssp_read_reg(ssp, SSCR0);
 sscr0 &= ~(SSCR0_MOD | SSCR0_SlotsPerFrm(8) | SSCR0_EDSS | SSCR0_DSS);


 if (slot_width > 16)
  sscr0 |= SSCR0_EDSS | SSCR0_DataSize(slot_width - 16);
 else
  sscr0 |= SSCR0_DataSize(slot_width);

 if (slots > 1) {

  sscr0 |= SSCR0_MOD;


  sscr0 |= SSCR0_SlotsPerFrm(slots);


  ssp_write_reg(ssp, SSTSA, tx_mask);
  ssp_write_reg(ssp, SSRSA, rx_mask);
 }
 ssp_write_reg(ssp, SSCR0, sscr0);

 return 0;
}
