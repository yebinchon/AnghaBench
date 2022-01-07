
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_point {int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
typedef int u8 ;
typedef int u32 ;
struct r8192_priv {int wx_sem; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {scalar_t__ alg; int ext_flags; int key_len; int key; } ;
struct ieee80211_device {int pairwise_key_type; int group_key_type; scalar_t__ iw_mode; int auth_mode; scalar_t__ ap_mac_addr; } ;


 int CamResetAllEntry (struct net_device*) ;
 int EnableHWSecurityConfig8192 (struct net_device*) ;
 scalar_t__ IW_ENCODE_ALG_CCMP ;
 scalar_t__ IW_ENCODE_ALG_NONE ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_EXT_GROUP_KEY ;
 int IW_ENCODE_INDEX ;
 scalar_t__ IW_MODE_ADHOC ;
 int KEY_TYPE_CCMP ;
 int KEY_TYPE_NA ;
 int KEY_TYPE_WEP104 ;
 int KEY_TYPE_WEP40 ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_set_encode_ext (struct ieee80211_device*,struct iw_request_info*,union iwreq_data*,char*) ;
 int memcpy (int*,int ,int) ;
 int setKey (struct net_device*,int,int,int,int*,int ,int *) ;
 int up (int *) ;

__attribute__((used)) static int r8192_wx_set_enc_ext(struct net_device *dev,
                                        struct iw_request_info *info,
                                        union iwreq_data *wrqu, char *extra)
{
 int ret=0;
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device* ieee = priv->ieee80211;



 down(&priv->wx_sem);
 ret = ieee80211_wx_set_encode_ext(priv->ieee80211, info, wrqu, extra);

 {
  u8 broadcast_addr[6] = {0xff,0xff,0xff,0xff,0xff,0xff};
  u8 zero[6] = {0};
  u32 key[4] = {0};
  struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
  struct iw_point *encoding = &wrqu->encoding;
  u8 idx = 0, alg = 0, group = 0;
  if ((encoding->flags & IW_ENCODE_DISABLED) ||
  ext->alg == IW_ENCODE_ALG_NONE)
  {
   ieee->pairwise_key_type = ieee->group_key_type = KEY_TYPE_NA;
   CamResetAllEntry(dev);
   goto end_hw_sec;
  }
  alg = (ext->alg == IW_ENCODE_ALG_CCMP)?KEY_TYPE_CCMP:ext->alg;
  idx = encoding->flags & IW_ENCODE_INDEX;
  if (idx)
   idx --;
  group = ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY;

  if ((!group) || (IW_MODE_ADHOC == ieee->iw_mode) || (alg == KEY_TYPE_WEP40))
  {
   if ((ext->key_len == 13) && (alg == KEY_TYPE_WEP40) )
    alg = KEY_TYPE_WEP104;
   ieee->pairwise_key_type = alg;
   EnableHWSecurityConfig8192(dev);
  }
  memcpy((u8*)key, ext->key, 16);

  if ((alg & KEY_TYPE_WEP40) && (ieee->auth_mode !=2) )
  {

   setKey( dev,
     idx,
     idx,
     alg,
     zero,
     0,
     key);
  }
  else if (group)
  {
   ieee->group_key_type = alg;
   setKey( dev,
     idx,
     idx,
     alg,
     broadcast_addr,
     0,
     key);
  }
  else
  {
   setKey( dev,
     4,
     idx,
     alg,
     (u8*)ieee->ap_mac_addr,
     0,
     key);
  }


 }

end_hw_sec:

 up(&priv->wx_sem);
 return ret;
}
