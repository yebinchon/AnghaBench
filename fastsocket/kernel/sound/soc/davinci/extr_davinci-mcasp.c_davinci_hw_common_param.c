
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct davinci_audio_dev {int num_serializer; scalar_t__* serial_dir; int txnumevt; int rxnumevt; scalar_t__ base; } ;


 scalar_t__ AXR (int) ;
 scalar_t__ DAVINCI_MCASP_PDIR_REG ;
 scalar_t__ DAVINCI_MCASP_PFUNC_REG ;
 scalar_t__ DAVINCI_MCASP_PWREMUMGT_REG ;
 scalar_t__ DAVINCI_MCASP_REVTCTL_REG ;
 scalar_t__ DAVINCI_MCASP_RFIFOCTL ;
 scalar_t__ DAVINCI_MCASP_RXSTAT_REG ;
 scalar_t__ DAVINCI_MCASP_TXSTAT_REG ;
 scalar_t__ DAVINCI_MCASP_WFIFOCTL ;
 scalar_t__ DAVINCI_MCASP_XEVTCTL_REG ;
 scalar_t__ DAVINCI_MCASP_XRSRCTL_REG (int) ;
 scalar_t__ FIFO_ENABLE ;
 scalar_t__ MCASP_SOFT ;
 int NUMDMA_MASK ;
 int NUMEVT_MASK ;
 scalar_t__ RXDATADMADIS ;
 scalar_t__ RX_MODE ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ TXDATADMADIS ;
 scalar_t__ TX_MODE ;
 int mcasp_clr_bits (scalar_t__,scalar_t__) ;
 int mcasp_mod_bits (scalar_t__,int,int ) ;
 int mcasp_set_bits (scalar_t__,scalar_t__) ;
 int mcasp_set_reg (scalar_t__,int) ;

__attribute__((used)) static void davinci_hw_common_param(struct davinci_audio_dev *dev, int stream)
{
 int i;
 u8 tx_ser = 0;
 u8 rx_ser = 0;


 mcasp_set_bits(dev->base + DAVINCI_MCASP_PWREMUMGT_REG, MCASP_SOFT);


 mcasp_set_reg(dev->base + DAVINCI_MCASP_PFUNC_REG, 0x00000000);

 if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
  mcasp_set_reg(dev->base + DAVINCI_MCASP_TXSTAT_REG, 0xFFFFFFFF);
  mcasp_clr_bits(dev->base + DAVINCI_MCASP_XEVTCTL_REG,
    TXDATADMADIS);
 } else {
  mcasp_set_reg(dev->base + DAVINCI_MCASP_RXSTAT_REG, 0xFFFFFFFF);
  mcasp_clr_bits(dev->base + DAVINCI_MCASP_REVTCTL_REG,
    RXDATADMADIS);
 }

 for (i = 0; i < dev->num_serializer; i++) {
  mcasp_set_bits(dev->base + DAVINCI_MCASP_XRSRCTL_REG(i),
     dev->serial_dir[i]);
  if (dev->serial_dir[i] == TX_MODE) {
   mcasp_set_bits(dev->base + DAVINCI_MCASP_PDIR_REG,
     AXR(i));
   tx_ser++;
  } else if (dev->serial_dir[i] == RX_MODE) {
   mcasp_clr_bits(dev->base + DAVINCI_MCASP_PDIR_REG,
     AXR(i));
   rx_ser++;
  }
 }

 if (dev->txnumevt && stream == SNDRV_PCM_STREAM_PLAYBACK) {
  if (dev->txnumevt * tx_ser > 64)
   dev->txnumevt = 1;

  mcasp_mod_bits(dev->base + DAVINCI_MCASP_WFIFOCTL, tx_ser,
        NUMDMA_MASK);
  mcasp_mod_bits(dev->base + DAVINCI_MCASP_WFIFOCTL,
    ((dev->txnumevt * tx_ser) << 8), NUMEVT_MASK);
  mcasp_set_bits(dev->base + DAVINCI_MCASP_WFIFOCTL, FIFO_ENABLE);
 }

 if (dev->rxnumevt && stream == SNDRV_PCM_STREAM_CAPTURE) {
  if (dev->rxnumevt * rx_ser > 64)
   dev->rxnumevt = 1;

  mcasp_mod_bits(dev->base + DAVINCI_MCASP_RFIFOCTL, rx_ser,
        NUMDMA_MASK);
  mcasp_mod_bits(dev->base + DAVINCI_MCASP_RFIFOCTL,
    ((dev->rxnumevt * rx_ser) << 8), NUMEVT_MASK);
  mcasp_set_bits(dev->base + DAVINCI_MCASP_RFIFOCTL, FIFO_ENABLE);
 }
}
