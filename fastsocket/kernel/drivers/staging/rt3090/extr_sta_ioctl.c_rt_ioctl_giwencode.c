
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; scalar_t__ length; } ;
struct TYPE_7__ {scalar_t__ WepStatus; scalar_t__ AuthMode; size_t DefaultKeyId; } ;
struct TYPE_8__ {TYPE_2__ StaCfg; TYPE_1__** SharedKey; } ;
struct TYPE_6__ {scalar_t__ KeyLen; int Key; } ;
typedef TYPE_3__* PRTMP_ADAPTER ;


 size_t BSS0 ;
 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 scalar_t__ Ndis802_11AuthModeShared ;
 scalar_t__ Ndis802_11WEPDisabled ;
 TYPE_3__* RTMP_OS_NETDEV_GET_PRIV (struct net_device*) ;
 int RTMP_TEST_FLAG (TYPE_3__*,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;
 int memcpy (char*,int ,scalar_t__) ;

int
rt_ioctl_giwencode(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *erq, char *key)
{
 int kid;
 PRTMP_ADAPTER pAdapter = RTMP_OS_NETDEV_GET_PRIV(dev);

 if (pAdapter == ((void*)0))
 {


  return -ENETDOWN;
 }


 if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
 {
  DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
 return -ENETDOWN;
 }

 kid = erq->flags & IW_ENCODE_INDEX;
 DBGPRINT(RT_DEBUG_TRACE, ("===>rt_ioctl_giwencode %d\n", erq->flags & IW_ENCODE_INDEX));

 if (pAdapter->StaCfg.WepStatus == Ndis802_11WEPDisabled)
 {
  erq->length = 0;
  erq->flags = IW_ENCODE_DISABLED;
 }
 else if ((kid > 0) && (kid <=4))
 {

  erq->flags = kid ;
  if (erq->length > pAdapter->SharedKey[BSS0][kid-1].KeyLen)
   erq->length = pAdapter->SharedKey[BSS0][kid-1].KeyLen;
  memcpy(key, pAdapter->SharedKey[BSS0][kid-1].Key, erq->length);


  if (pAdapter->StaCfg.AuthMode == Ndis802_11AuthModeShared)
   erq->flags |= IW_ENCODE_RESTRICTED;
  else
   erq->flags |= IW_ENCODE_OPEN;

 }
 else if (kid == 0)
 {
  if (pAdapter->StaCfg.AuthMode == Ndis802_11AuthModeShared)
   erq->flags |= IW_ENCODE_RESTRICTED;
  else
   erq->flags |= IW_ENCODE_OPEN;
  erq->length = pAdapter->SharedKey[BSS0][pAdapter->StaCfg.DefaultKeyId].KeyLen;
  memcpy(key, pAdapter->SharedKey[BSS0][pAdapter->StaCfg.DefaultKeyId].Key, erq->length);

  if (pAdapter->StaCfg.AuthMode == Ndis802_11AuthModeShared)
   erq->flags |= IW_ENCODE_RESTRICTED;
  else
   erq->flags |= IW_ENCODE_OPEN;
  erq->flags = pAdapter->StaCfg.DefaultKeyId + 1;
  erq->flags |= IW_ENCODE_ENABLED;
 }

 return 0;

}
