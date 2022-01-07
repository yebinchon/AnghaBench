
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int txrdu; } ;
struct r8180_priv {int* txmapringtail; int* txmapring; int txringcount; int* txbkpringtail; int* txbkpring; int* txbepringtail; int* txbepring; int* txvipringtail; int* txvipring; int* txvopringtail; int* txvopring; int* txhpringtail; int* txhpring; int* txbeaconringtail; int* txbeaconring; int txbeaconcount; int rts; int txbuffsize; scalar_t__ card_8185; int plcp_preamble_mode; struct buffer* txhpbufstail; struct buffer* txvopbufstail; struct buffer* txvipbufstail; struct buffer* txbepbufstail; struct buffer* txbkpbufstail; struct buffer* txmapbufstail; int hw_plcp_len; TYPE_3__* ieee80211; TYPE_1__ stats; int NumTxUnicast; struct buffer* txbeaconbufstail; } ;
struct net_device {int dummy; } ;
struct ieee80211_hdr_3addr {int frame_ctl; int duration_id; int addr1; } ;
struct buffer {int* buf; struct buffer* next; } ;
struct TYPE_5__ {int capability; } ;
struct TYPE_6__ {int basic_rate; TYPE_2__ current_network; } ;





 int ComputeTxTime (int,int,int ,int) ;
 int DMESGE (char*,int) ;
 int DMESGW (char*,int,int) ;
 int ETH_ALEN ;

 int IEEE80211_FCTL_MOREFRAGS ;



 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int aSifsTime ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int ieeerate2rtlrate (int) ;
 scalar_t__ is_broadcast_ether_addr (int*) ;
 scalar_t__ is_multicast_ether_addr (int*) ;
 int mb () ;
 int memcpy (int**,int ,int) ;
 int rtl8180_dma_kick (struct net_device*,int) ;
 int rtl8180_len2duration (int,int,short*) ;
 int rtl8180_rate2rate (int) ;
 int sAckCtsLng ;
 int sCrcLng ;
 int wmb () ;

short rtl8180_tx(struct net_device *dev, u8* txbuf, int len, int priority,
   short morefrag, short descfrag, int rate)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 u32 *tail,*temp_tail;
 u32 *begin;
 u32 *buf;
 int i;
 int remain;
 int buflen;
 int count;
 u16 duration;
 short ext;
 struct buffer* buflist;
 struct ieee80211_hdr_3addr *frag_hdr = (struct ieee80211_hdr_3addr *)txbuf;
 u8 dest[ETH_ALEN];
 u8 bUseShortPreamble = 0;
 u8 bCTSEnable = 0;
 u8 bRTSEnable = 0;
 u16 Duration = 0;
 u16 RtsDur = 0;
 u16 ThisFrameTime = 0;
 u16 TxDescDuration = 0;
 u8 ownbit_flag = 0;

 switch(priority) {
 case 130:
  tail=priv->txmapringtail;
  begin=priv->txmapring;
  buflist = priv->txmapbufstail;
  count = priv->txringcount;
  break;
 case 132:
  tail=priv->txbkpringtail;
  begin=priv->txbkpring;
  buflist = priv->txbkpbufstail;
  count = priv->txringcount;
  break;
 case 133:
  tail=priv->txbepringtail;
  begin=priv->txbepring;
  buflist = priv->txbepbufstail;
  count = priv->txringcount;
  break;
 case 129:
  tail=priv->txvipringtail;
  begin=priv->txvipring;
  buflist = priv->txvipbufstail;
  count = priv->txringcount;
  break;
 case 128:
  tail=priv->txvopringtail;
  begin=priv->txvopring;
  buflist = priv->txvopbufstail;
  count = priv->txringcount;
  break;
 case 131:
  tail=priv->txhpringtail;
  begin=priv->txhpring;
  buflist = priv->txhpbufstail;
  count = priv->txringcount;
  break;
 case 134:
  tail=priv->txbeaconringtail;
  begin=priv->txbeaconring;
  buflist = priv->txbeaconbufstail;
  count = priv->txbeaconcount;
  break;
 default:
  return -1;
  break;
  }

  memcpy(&dest, frag_hdr->addr1, ETH_ALEN);
  if (is_multicast_ether_addr(dest) ||
    is_broadcast_ether_addr(dest))
  {
   Duration = 0;
   RtsDur = 0;
   bRTSEnable = 0;
   bCTSEnable = 0;

   ThisFrameTime = ComputeTxTime(len + sCrcLng, rtl8180_rate2rate(rate), 0, bUseShortPreamble);
   TxDescDuration = ThisFrameTime;
  } else {
   u16 AckTime;


   priv->NumTxUnicast++;


   AckTime = ComputeTxTime(14, 10,0, 0);

   if ( ((len + sCrcLng) > priv->rts) && priv->rts )
   {
    u16 RtsTime, CtsTime;

    bRTSEnable = 1;
    bCTSEnable = 0;


    RtsTime = ComputeTxTime( sAckCtsLng/8,priv->ieee80211->basic_rate, 0, 0);

    CtsTime = ComputeTxTime(14, 10,0, 0);


    ThisFrameTime = ComputeTxTime(len + sCrcLng,
      rtl8180_rate2rate(rate),
      0,
      bUseShortPreamble);


    RtsDur = CtsTime + ThisFrameTime + AckTime + 3*aSifsTime;

    TxDescDuration = RtsTime + RtsDur;
   }
   else {
    bCTSEnable = 0;
    bRTSEnable = 0;
    RtsDur = 0;

    ThisFrameTime = ComputeTxTime(len + sCrcLng, rtl8180_rate2rate(rate), 0, bUseShortPreamble);
    TxDescDuration = ThisFrameTime + aSifsTime + AckTime;
   }

   if(!(frag_hdr->frame_ctl & IEEE80211_FCTL_MOREFRAGS)) {

    Duration = aSifsTime + AckTime;
   } else {
    u16 NextFragTime;
    NextFragTime = ComputeTxTime( len + sCrcLng,
      rtl8180_rate2rate(rate),
      0,
      bUseShortPreamble );


    Duration = NextFragTime + 3*aSifsTime + 2*AckTime;
   }

  }

  frag_hdr->duration_id = Duration;

 buflen=priv->txbuffsize;
 remain=len;
 temp_tail = tail;

 while(remain!=0){
  mb();
  if(!buflist){
   DMESGE("TX buffer error, cannot TX frames. pri %d.", priority);
   return -1;
  }
  buf=buflist->buf;

  if ((*tail & (1 << 31)) && (priority != 134)) {
   DMESGW("No more TX desc, returning %x of %x",
          remain, len);
   priv->stats.txrdu++;
   return remain;
  }

  *tail= 0;
  *(tail+1) = 0;
  *(tail+3) = 0;
  *(tail+5) = 0;
  *(tail+6) = 0;
  *(tail+7) = 0;

  if(priv->card_8185){

   *tail |= (1<<15);
  }

  if(remain==len && !descfrag) {
   ownbit_flag = 0;
   *tail = *tail| (1<<29) ;
   *tail = *tail |(len);
  } else {
   ownbit_flag = 1;
  }

  for(i=0;i<buflen&& remain >0;i++,remain--){
   ((u8*)buf)[i]=txbuf[i];
   if(remain == 4 && i+4 >= buflen) break;


  }
  txbuf = txbuf + i;
  *(tail+3)=*(tail+3) &~ 0xfff;
  *(tail+3)=*(tail+3) | i;

  if (priv->ieee80211->current_network.capability&WLAN_CAPABILITY_SHORT_PREAMBLE)
   if (priv->plcp_preamble_mode==1 && rate!=0)
   ;

  if(bCTSEnable) {
   *tail |= (1<<18);
  }

  if(bRTSEnable)
  {
   *tail |= ((ieeerate2rtlrate(priv->ieee80211->basic_rate))<<19);
   *tail |= (1<<23);
   *(tail+1) |=(RtsDur&0xffff);
  }
  *(tail+3) |= ((TxDescDuration&0xffff)<<16);

         *(tail+5) |= (11<<8);

  *tail = *tail | ((rate&0xf) << 24);



  if(priv->card_8185 == 0 || !priv->hw_plcp_len){
   duration = rtl8180_len2duration(len, rate, &ext);
   *(tail+1) = *(tail+1) | ((duration & 0x7fff)<<16);
   if(ext) *(tail+1) = *(tail+1) |(1<<31);
  }

  if(morefrag) *tail = (*tail) | (1<<17);
  if(!remain) *tail = (*tail) | (1<<28);

               *(tail+5) = *(tail+5)|(2<<27);
                *(tail+7) = *(tail+7)|(1<<4);

  wmb();
  if(ownbit_flag)
  {
   *tail = *tail | (1<<31);
  }

  if((tail - begin)/8 == count-1)
   tail=begin;
  else
   tail=tail+8;

  buflist=buflist->next;

  mb();

  switch(priority) {
   case 130:
    priv->txmapringtail=tail;
    priv->txmapbufstail=buflist;
    break;
   case 132:
    priv->txbkpringtail=tail;
    priv->txbkpbufstail=buflist;
    break;
   case 133:
    priv->txbepringtail=tail;
    priv->txbepbufstail=buflist;
    break;
   case 129:
    priv->txvipringtail=tail;
    priv->txvipbufstail=buflist;
    break;
   case 128:
    priv->txvopringtail=tail;
    priv->txvopbufstail=buflist;
    break;
   case 131:
    priv->txhpringtail=tail;
    priv->txhpbufstail = buflist;
    break;
   case 134:





    break;
  }
 }
 *temp_tail = *temp_tail | (1<<31);
 rtl8180_dma_kick(dev,priority);

 return 0;
}
