
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8180_priv {int irq_mask; scalar_t__ card_type; int sens; int (* rf_set_sens ) (struct net_device*,int ) ;int (* rf_init ) (struct net_device*) ;scalar_t__ card_8185; TYPE_1__* ieee80211; scalar_t__ dma_poll_mask; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct TYPE_2__ {int basic_rate; } ;


 int AGCRESET_SHIFT ;
 int BRSR ;
 int BRSR_BPLCP ;
 int BRSR_MBR ;
 scalar_t__ CARDBUS ;
 int CONFIG2 ;
 int CONFIG2_DMA_POLLING_MODE_SHIFT ;
 int CONFIG3 ;
 int CONFIG3_CLKRUN_SHIFT ;
 int CONFIG3_FuncRegEn ;
 int CONFIG5 ;
 int EPROM_ANAPARAM_ADDRHWORD ;
 int EPROM_ANAPARAM_ADDRLWORD ;
 int EPROM_CMD_CONFIG ;
 int EPROM_CMD_NORMAL ;
 int FEMR ;
 int FEMR_GWAKE ;
 int FEMR_INTR ;
 int FEMR_WKUP ;
 int GP_ENABLE ;
 int INT_TIMEOUT ;
 int MAC0 ;
 int MAC4 ;
 int RATE_FALLBACK ;
 int WPA_CONFIG ;
 int eprom_read (struct net_device*,int ) ;
 int fix_rx_fifo (struct net_device*) ;
 int fix_tx_fifo (struct net_device*) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int ieeerate2rtlrate (int ) ;
 int netif_start_queue (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_word (struct net_device*,int ) ;
 int rtl8180_beacon_tx_disable (struct net_device*) ;
 int rtl8180_irq_enable (struct net_device*) ;
 int rtl8180_no_hw_wep (struct net_device*) ;
 int rtl8180_reset (struct net_device*) ;
 int rtl8180_rtx_disable (struct net_device*) ;
 int rtl8180_set_anaparam (struct net_device*,int) ;
 int rtl8180_set_mode (struct net_device*,int ) ;
 int rtl8180_update_msr (struct net_device*) ;
 int rtl8185_set_rate (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*,int ) ;
 int udelay (int) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int) ;

void rtl8180_adapter_start(struct net_device *dev)
{
        struct r8180_priv *priv = ieee80211_priv(dev);
 u32 anaparam;
 u16 word;
 u8 config3;

 rtl8180_rtx_disable(dev);
 rtl8180_reset(dev);




 priv->irq_mask = 0x6fcf;

 priv->dma_poll_mask = 0;

 rtl8180_beacon_tx_disable(dev);

 if(priv->card_type == CARDBUS ){
  config3=read_nic_byte(dev, CONFIG3);
  write_nic_byte(dev,CONFIG3,config3 | CONFIG3_FuncRegEn);
  write_nic_word(dev,FEMR, FEMR_INTR | FEMR_WKUP | FEMR_GWAKE |
   read_nic_word(dev, FEMR));
 }
 rtl8180_set_mode(dev, EPROM_CMD_CONFIG);
 write_nic_dword(dev, MAC0, ((u32*)dev->dev_addr)[0]);
 write_nic_word(dev, MAC4, ((u32*)dev->dev_addr)[1] & 0xffff );
 rtl8180_set_mode(dev, EPROM_CMD_NORMAL);

 rtl8180_update_msr(dev);

 if(!priv->card_8185){
  anaparam = eprom_read(dev,EPROM_ANAPARAM_ADDRLWORD);
  anaparam |= eprom_read(dev,EPROM_ANAPARAM_ADDRHWORD)<<16;

  rtl8180_set_anaparam(dev,anaparam);
 }

 fix_rx_fifo(dev);
 fix_tx_fifo(dev);

 rtl8180_set_mode(dev, EPROM_CMD_CONFIG);







 write_nic_byte(dev,
         CONFIG2, read_nic_byte(dev,CONFIG2) &~ (1<<CONFIG2_DMA_POLLING_MODE_SHIFT));


 if(priv->card_8185)
   write_nic_byte(dev,
         CONFIG2, read_nic_byte(dev,CONFIG2)|(1<<4));

 rtl8180_set_mode(dev,EPROM_CMD_NORMAL);

 write_nic_dword(dev,INT_TIMEOUT,0);

 if(!priv->card_8185)
 {




  write_nic_byte(dev, CONFIG5,
   read_nic_byte(dev, CONFIG5) | (1<<AGCRESET_SHIFT));
  read_nic_byte(dev, CONFIG5);
  udelay(15);
  write_nic_byte(dev, CONFIG5,
   read_nic_byte(dev, CONFIG5) &~ (1<<AGCRESET_SHIFT));
 }else{
  write_nic_byte(dev, WPA_CONFIG, 0);

 }

 rtl8180_no_hw_wep(dev);

 if(priv->card_8185){
  rtl8185_set_rate(dev);
  write_nic_byte(dev, RATE_FALLBACK, 0x81);
 }else{
  word = read_nic_word(dev, BRSR);
  word &= ~BRSR_MBR;
  word &= ~BRSR_BPLCP;
  word |= ieeerate2rtlrate(priv->ieee80211->basic_rate);
  word |= 0x0f;
  write_nic_word(dev, BRSR, word);
 }

 if(priv->card_8185){
  write_nic_byte(dev, GP_ENABLE,read_nic_byte(dev, GP_ENABLE) & ~(1<<6));


  rtl8180_set_mode(dev, EPROM_CMD_CONFIG);
  write_nic_byte(dev,CONFIG3, read_nic_byte(dev, CONFIG3)
          | (1 << CONFIG3_CLKRUN_SHIFT));
  rtl8180_set_mode(dev, EPROM_CMD_NORMAL);
 }

 priv->rf_init(dev);

 if(priv->rf_set_sens != ((void*)0))
  priv->rf_set_sens(dev,priv->sens);
 rtl8180_irq_enable(dev);

 netif_start_queue(dev);
}
