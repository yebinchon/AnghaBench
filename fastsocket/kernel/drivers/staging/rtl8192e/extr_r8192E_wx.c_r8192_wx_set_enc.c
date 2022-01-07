
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int flags; } ;
union iwreq_data {TYPE_1__ encoding; } ;
typedef char u8 ;
typedef char u32 ;
struct r8192_priv {int wx_sem; struct ieee80211_device* ieee80211; int up; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {char tx_keyidx; void* pairwise_key_type; } ;


 int COMP_SEC ;
 int ENETDOWN ;
 int EnableHWSecurityConfig8192 (struct net_device*) ;
 int IW_ENCODE_INDEX ;
 void* KEY_TYPE_WEP104 ;
 void* KEY_TYPE_WEP40 ;
 int RT_TRACE (int ,char*) ;
 char* broadcast_addr ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_set_encode (struct ieee80211_device*,struct iw_request_info*,union iwreq_data*,char*) ;
 int printk (char*) ;
 int read_cam (struct net_device*,char) ;
 int setKey (struct net_device*,int,char,void*,char*,int ,char*) ;
 int up (int *) ;
 int write_cam (struct net_device*,int,int) ;

__attribute__((used)) static int r8192_wx_set_enc(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *key)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int ret;

 struct ieee80211_device *ieee = priv->ieee80211;

 u32 hwkey[4]={0,0,0,0};
 u8 mask=0xff;
 u32 key_idx=0;
 u8 zero_addr[4][6] ={ {0x00,0x00,0x00,0x00,0x00,0x00},
    {0x00,0x00,0x00,0x00,0x00,0x01},
    {0x00,0x00,0x00,0x00,0x00,0x02},
    {0x00,0x00,0x00,0x00,0x00,0x03} };
 int i;

       if(!priv->up) return -ENETDOWN;

 down(&priv->wx_sem);

 RT_TRACE(COMP_SEC, "Setting SW wep key");
 ret = ieee80211_wx_set_encode(priv->ieee80211,info,wrqu,key);

 up(&priv->wx_sem);



 if(wrqu->encoding.length!=0){

  for(i=0 ; i<4 ; i++){
   hwkey[i] |= key[4*i+0]&mask;
   if(i==1&&(4*i+1)==wrqu->encoding.length) mask=0x00;
   if(i==3&&(4*i+1)==wrqu->encoding.length) mask=0x00;
   hwkey[i] |= (key[4*i+1]&mask)<<8;
   hwkey[i] |= (key[4*i+2]&mask)<<16;
   hwkey[i] |= (key[4*i+3]&mask)<<24;
  }




  switch(wrqu->encoding.flags & IW_ENCODE_INDEX){
   case 0: key_idx = ieee->tx_keyidx; break;
   case 1: key_idx = 0; break;
   case 2: key_idx = 1; break;
   case 3: key_idx = 2; break;
   case 4: key_idx = 3; break;
   default: break;
  }


  if(wrqu->encoding.length==0x5){
  ieee->pairwise_key_type = KEY_TYPE_WEP40;
   EnableHWSecurityConfig8192(dev);
   setKey( dev,
    key_idx,
    key_idx,
    KEY_TYPE_WEP40,
    zero_addr[key_idx],
    0,
    hwkey);
  }

  else if(wrqu->encoding.length==0xd){
   ieee->pairwise_key_type = KEY_TYPE_WEP104;
    EnableHWSecurityConfig8192(dev);
   setKey( dev,
    key_idx,
    key_idx,
    KEY_TYPE_WEP104,
    zero_addr[key_idx],
    0,
    hwkey);
  }
  else printk("wrong type in WEP, not WEP40 and WEP104\n");


 }
 return ret;
}
