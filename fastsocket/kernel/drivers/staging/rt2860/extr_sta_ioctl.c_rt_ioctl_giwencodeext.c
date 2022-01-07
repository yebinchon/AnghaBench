
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iw_point {int length; int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
struct net_device {TYPE_3__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {int key_len; int key; int alg; } ;
struct TYPE_5__ {int WepStatus; int DefaultKeyId; int * PMK; } ;
struct TYPE_6__ {TYPE_2__ StaCfg; TYPE_1__** SharedKey; } ;
struct TYPE_4__ {int KeyLen; int * Key; } ;
typedef TYPE_3__* PRTMP_ADAPTER ;
typedef int * PCHAR ;


 size_t BSS0 ;
 int DBGPRINT (int ,char*) ;
 int E2BIG ;
 int EINVAL ;
 int IW_ENCODE_ALG_CCMP ;
 int IW_ENCODE_ALG_NONE ;
 int IW_ENCODE_ALG_TKIP ;
 int IW_ENCODE_ALG_WEP ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_INDEX ;




 int RT_DEBUG_TRACE ;
 int memcpy (int ,int *,int) ;
 int memset (struct iw_encode_ext*,int ,int) ;

int
rt_ioctl_giwencodeext(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *wrqu, char *extra)
{
 PRTMP_ADAPTER pAd = dev->ml_priv;
 PCHAR pKey = ((void*)0);
 struct iw_point *encoding = &wrqu->encoding;
 struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 int idx, max_key_len;

 DBGPRINT(RT_DEBUG_TRACE ,("===> rt_ioctl_giwencodeext\n"));

 max_key_len = encoding->length - sizeof(*ext);
 if (max_key_len < 0)
  return -EINVAL;

 idx = encoding->flags & IW_ENCODE_INDEX;
 if (idx)
 {
  if (idx < 1 || idx > 4)
   return -EINVAL;
  idx--;

  if ((pAd->StaCfg.WepStatus == 131) ||
   (pAd->StaCfg.WepStatus == 130))
  {
   if (idx != pAd->StaCfg.DefaultKeyId)
   {
    ext->key_len = 0;
    return 0;
   }
  }
 }
 else
  idx = pAd->StaCfg.DefaultKeyId;

 encoding->flags = idx + 1;
 memset(ext, 0, sizeof(*ext));

 ext->key_len = 0;
 switch(pAd->StaCfg.WepStatus) {
  case 129:
   ext->alg = IW_ENCODE_ALG_NONE;
   encoding->flags |= IW_ENCODE_DISABLED;
   break;
  case 128:
   ext->alg = IW_ENCODE_ALG_WEP;
   if (pAd->SharedKey[BSS0][idx].KeyLen > max_key_len)
    return -E2BIG;
   else
   {
    ext->key_len = pAd->SharedKey[BSS0][idx].KeyLen;
    pKey = &(pAd->SharedKey[BSS0][idx].Key[0]);
   }
   break;
  case 131:
  case 130:
   if (pAd->StaCfg.WepStatus == 131)
    ext->alg = IW_ENCODE_ALG_TKIP;
   else
    ext->alg = IW_ENCODE_ALG_CCMP;

   if (max_key_len < 32)
    return -E2BIG;
   else
   {
    ext->key_len = 32;
    pKey = &pAd->StaCfg.PMK[0];
   }
   break;
  default:
   return -EINVAL;
 }

 if (ext->key_len && pKey)
 {
  encoding->flags |= IW_ENCODE_ENABLED;
  memcpy(ext->key, pKey, ext->key_len);
 }

 return 0;
}
