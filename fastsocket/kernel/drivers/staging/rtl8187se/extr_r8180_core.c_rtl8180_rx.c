
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; unsigned char* data; struct net_device* dev; } ;
struct TYPE_12__ {int rxnolast; int rxcrcerrmid; int rxcrcerrmax; int rxcrcerrmin; int rxdmafail; int rxicverr; int rxnodata; } ;
struct TYPE_9__ {unsigned char qual; int noise; } ;
struct TYPE_10__ {TYPE_2__ qual; } ;
struct r8180_priv {int* rxringtail; int* rxring; int rxringcount; int rxbuffersize; int rx_prevlen; int rx_skb_complete; int SignalStrength; long RecvSignalPower; char RxPower; int RSSI; unsigned char SignalQuality; long LastSignalStrengthInPercent; long Stats_SignalQuality; long Stats_RecvSignalPower; int LastRxPktAntenna; TYPE_6__* rxbuffer; int pdev; struct sk_buff* rx_skb; TYPE_7__* ieee80211; scalar_t__ prism_hdr; TYPE_5__ stats; int Stats_SignalStrength; TYPE_3__ wstats; int card_8185; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int signal; int noise; int* mac_time; int signalstrength; unsigned char rssi; int rate; int nic_type; int freq; } ;
struct ieee80211_hdr_4addr {int addr3; int addr2; int addr1; int frame_ctl; } ;
struct TYPE_11__ {int bssid; } ;
struct TYPE_8__ {int rx_errors; } ;
struct TYPE_14__ {scalar_t__ iw_mode; TYPE_4__ current_network; TYPE_1__ stats; } ;
struct TYPE_13__ {int dma; unsigned char* buf; struct TYPE_13__* next; } ;
typedef int RxAGC_dBm ;


 int DMESGW (char*) ;
 int IEEE80211_24GHZ_BAND ;
 scalar_t__ IEEE80211_FCTL_FROMDS ;
 scalar_t__ IEEE80211_FCTL_TODS ;
 scalar_t__ IEEE80211_FTYPE_CTL ;
 scalar_t__ IW_MODE_MONITOR ;
 int MAX_FRAG_THRESHOLD ;
 int NIC_8185B ;
 long NetgearSignalStrengthTranslate (long,int) ;
 int PCI_DMA_FROMDEVICE ;
 int PerformUndecoratedSignalSmoothing8185 (struct r8180_priv*,int) ;
 int SwAntennaDiversityRxOk8185 (struct net_device*,int) ;
 int TranslateToDbm8185 (int) ;
 scalar_t__ WLAN_FC_GET_TYPE (scalar_t__) ;
 void* dev_alloc_skb (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ eqMacAddr (int ,int ) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieee80211_rx (TYPE_7__*,struct sk_buff*,struct ieee80211_rx_stats*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int ,unsigned char*,int) ;
 int pci_dma_sync_single_for_cpu (int ,int,int,int ) ;
 int pci_dma_sync_single_for_device (int ,int,int,int ) ;
 int printk (char*) ;
 int rtl8180_IsWirelessBMode (int ) ;
 int rtl8180_rate2rate (int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

void rtl8180_rx(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 struct sk_buff *tmp_skb;
 short first,last;
 u32 len;
 int lastlen;
 unsigned char quality, signal;
 u8 rate;
 u32 *tmp,*tmp2;
 u8 rx_desc_size;
 u8 padding;
 char rxpower = 0;
 u32 RXAGC = 0;
 long RxAGC_dBm = 0;
 u8 LNA=0, BB=0;
 u8 LNA_gain[4]={02, 17, 29, 39};
 u8 Antenna = 0;
 struct ieee80211_hdr_4addr *hdr;
 u16 fc,type;
 u8 bHwError = 0,bCRC = 0,bICV = 0;
 bool bCckRate = 0;
 u8 RSSI = 0;
 long SignalStrengthIndex = 0;
 struct ieee80211_rx_stats stats = {
  .signal = 0,
  .noise = -98,
  .rate = 0,
  .freq = IEEE80211_24GHZ_BAND,
 };

 stats.nic_type = NIC_8185B;
 rx_desc_size = 8;

 if ((*(priv->rxringtail)) & (1<<31)) {



  priv->stats.rxnodata++;
  priv->ieee80211->stats.rx_errors++;

  tmp2 = ((void*)0);
  tmp = priv->rxringtail;
  do{
   if(tmp == priv->rxring)
    tmp = priv->rxring + (priv->rxringcount - 1)*rx_desc_size;
   else
    tmp -= rx_desc_size;

   if(! (*tmp & (1<<31)))
    tmp2 = tmp;
  }while(tmp != priv->rxring);

  if(tmp2) priv->rxringtail = tmp2;
 }


 while(!(*(priv->rxringtail) & (1<<31))){
  if(*(priv->rxringtail) & (1<<26))
   DMESGW("RX buffer overflow");
  if(*(priv->rxringtail) & (1<<12))
   priv->stats.rxicverr++;

  if(*(priv->rxringtail) & (1<<27)){
   priv->stats.rxdmafail++;

   goto drop;
  }

  pci_dma_sync_single_for_cpu(priv->pdev,
        priv->rxbuffer->dma,
        priv->rxbuffersize * sizeof(u8),

        PCI_DMA_FROMDEVICE);

  first = *(priv->rxringtail) & (1<<29) ? 1:0;
  if(first) priv->rx_prevlen=0;

  last = *(priv->rxringtail) & (1<<28) ? 1:0;
  if(last){
   lastlen=((*priv->rxringtail) &0xfff);
   if(lastlen < priv->rx_prevlen)
    len=0;
   else
    len=lastlen-priv->rx_prevlen;

   if(*(priv->rxringtail) & (1<<13)) {
    if ((*(priv->rxringtail) & 0xfff) <500)
     priv->stats.rxcrcerrmin++;
    else if ((*(priv->rxringtail) & 0x0fff) >1000)
     priv->stats.rxcrcerrmax++;
    else
     priv->stats.rxcrcerrmid++;

   }

  }else{
   len = priv->rxbuffersize;
  }

  if(first && last) {
   padding = ((*(priv->rxringtail+3))&(0x04000000))>>26;
  }else if(first) {
   padding = ((*(priv->rxringtail+3))&(0x04000000))>>26;
   if(padding) {
    len -= 2;
   }
  }else {
   padding = 0;
  }
               padding = 0;
  priv->rx_prevlen+=len;

  if(priv->rx_prevlen > MAX_FRAG_THRESHOLD + 100){





   if(!priv->rx_skb_complete)
    dev_kfree_skb_any(priv->rx_skb);
   priv->rx_skb_complete = 1;
  }

  signal=(unsigned char)(((*(priv->rxringtail+3))& (0x00ff0000))>>16);
  signal=(signal&0xfe)>>1;

  quality=(unsigned char)((*(priv->rxringtail+3)) & (0xff));

  stats.mac_time[0] = *(priv->rxringtail+1);
  stats.mac_time[1] = *(priv->rxringtail+2);
  rxpower =((char)(((*(priv->rxringtail+4))& (0x00ff0000))>>16))/2 - 42;
  RSSI = ((u8)(((*(priv->rxringtail+3)) & (0x0000ff00))>> 8)) & (0x7f);

  rate=((*(priv->rxringtail)) &
   ((1<<23)|(1<<22)|(1<<21)|(1<<20)))>>20;

  stats.rate = rtl8180_rate2rate(rate);
  Antenna = (((*(priv->rxringtail +3))& (0x00008000)) == 0 )? 0:1 ;

  if(!rtl8180_IsWirelessBMode(stats.rate))
  {

   RxAGC_dBm = rxpower+1;
  }
  else
  {
   RxAGC_dBm = signal;

   LNA = (u8) (RxAGC_dBm & 0x60 ) >> 5 ;
   BB = (u8) (RxAGC_dBm & 0x1F);

      RxAGC_dBm = -( LNA_gain[LNA] + (BB *2) );

   RxAGC_dBm +=4;
  }

  if(RxAGC_dBm & 0x80)
      RXAGC= ~(RxAGC_dBm)+1;
  bCckRate = rtl8180_IsWirelessBMode(stats.rate);

  if(!rtl8180_IsWirelessBMode(stats.rate))
  {
   if(RXAGC>90)
    RXAGC=90;
   else if(RXAGC<25)
    RXAGC=25;
   RXAGC=(90-RXAGC)*100/65;
  }
  else
  {
   if(RXAGC>95)
    RXAGC=95;
   else if(RXAGC<30)
    RXAGC=30;
   RXAGC=(95-RXAGC)*100/65;
  }
  priv->SignalStrength = (u8)RXAGC;
  priv->RecvSignalPower = RxAGC_dBm ;
  priv->RxPower = rxpower;
  priv->RSSI = RSSI;


  if(quality >= 127)
   quality = 1;
  else if(quality < 27)
   quality = 100;
  else
   quality = 127 - quality;
  priv->SignalQuality = quality;
  if(!priv->card_8185)
   printk("check your card type\n");

  stats.signal = (u8)quality;
  stats.signalstrength = RXAGC;
  if(stats.signalstrength > 100)
   stats.signalstrength = 100;
  stats.signalstrength = (stats.signalstrength * 70)/100 + 30;

  stats.rssi = priv->wstats.qual.qual = priv->SignalQuality;
  stats.noise = priv->wstats.qual.noise = 100 - priv ->wstats.qual.qual;

  bHwError = (((*(priv->rxringtail))& (0x00000fff)) == 4080)| (((*(priv->rxringtail))& (0x04000000)) != 0 )
   | (((*(priv->rxringtail))& (0x08000000)) != 0 )| (((~(*(priv->rxringtail)))& (0x10000000)) != 0 )| (((~(*(priv->rxringtail)))& (0x20000000)) != 0 );
  bCRC = ((*(priv->rxringtail)) & (0x00002000)) >> 13;
  bICV = ((*(priv->rxringtail)) & (0x00001000)) >> 12;
  hdr = (struct ieee80211_hdr_4addr *)priv->rxbuffer->buf;
      fc = le16_to_cpu(hdr->frame_ctl);
         type = WLAN_FC_GET_TYPE(fc);

   if((IEEE80211_FTYPE_CTL != type) &&
    (eqMacAddr(priv->ieee80211->current_network.bssid, (fc & IEEE80211_FCTL_TODS)? hdr->addr1 : (fc & IEEE80211_FCTL_FROMDS )? hdr->addr2 : hdr->addr3))
     && (!bHwError) && (!bCRC)&& (!bICV))
   {





    PerformUndecoratedSignalSmoothing8185(priv,bCckRate);



    SignalStrengthIndex = NetgearSignalStrengthTranslate(
        priv->LastSignalStrengthInPercent,
        priv->SignalStrength);

    priv->LastSignalStrengthInPercent = SignalStrengthIndex;
    priv->Stats_SignalStrength = TranslateToDbm8185((u8)SignalStrengthIndex);




    priv->Stats_SignalQuality =(long) (priv->Stats_SignalQuality * 5 + (long)priv->SignalQuality + 5) / 6;
    priv->Stats_RecvSignalPower = (long)(priv->Stats_RecvSignalPower * 5 + priv->RecvSignalPower -1) / 6;


    priv->LastRxPktAntenna = Antenna ? 1 : 0;

       SwAntennaDiversityRxOk8185(dev, priv->SignalStrength);
   }



  if(first){
   if(!priv->rx_skb_complete){


    dev_kfree_skb_any(priv->rx_skb);
    priv->stats.rxnolast++;
   }

   if(priv->prism_hdr && priv->ieee80211->iw_mode == IW_MODE_MONITOR){

   }else{
    priv->rx_skb = dev_alloc_skb(len+2);
    if( !priv->rx_skb) goto drop;
   }

   priv->rx_skb_complete=0;
   priv->rx_skb->dev=dev;
  }else{






   if(!priv->rx_skb_complete){

    tmp_skb= dev_alloc_skb(priv->rx_skb->len +len+2);

    if(!tmp_skb) goto drop;

    tmp_skb->dev=dev;

    memcpy(skb_put(tmp_skb,priv->rx_skb->len),
     priv->rx_skb->data,
     priv->rx_skb->len);

    dev_kfree_skb_any(priv->rx_skb);

    priv->rx_skb=tmp_skb;
   }
  }

  if(!priv->rx_skb_complete) {
   if(padding) {
    memcpy(skb_put(priv->rx_skb,len),
     (((unsigned char *)priv->rxbuffer->buf) + 2),len);
   } else {
    memcpy(skb_put(priv->rx_skb,len),
     priv->rxbuffer->buf,len);
   }
  }

  if(last && !priv->rx_skb_complete){
   if(priv->rx_skb->len > 4)
    skb_trim(priv->rx_skb,priv->rx_skb->len-4);

   if(!ieee80211_rx(priv->ieee80211,
      priv->rx_skb, &stats)){


    dev_kfree_skb_any(priv->rx_skb);

   }

   priv->rx_skb_complete=1;
  }


  pci_dma_sync_single_for_device(priv->pdev,
        priv->rxbuffer->dma,
        priv->rxbuffersize * sizeof(u8),

        PCI_DMA_FROMDEVICE);

drop:

  *(priv->rxringtail+2)=priv->rxbuffer->dma;
  *(priv->rxringtail)=*(priv->rxringtail) &~ 0xfff;
  *(priv->rxringtail)=
   *(priv->rxringtail) | priv->rxbuffersize;

  *(priv->rxringtail)=
   *(priv->rxringtail) | (1<<31);

  priv->rxringtail+=rx_desc_size;
  if(priv->rxringtail >=
     (priv->rxring)+(priv->rxringcount )*rx_desc_size)
   priv->rxringtail=priv->rxring;

  priv->rxbuffer=(priv->rxbuffer->next);
 }
}
