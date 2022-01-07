
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct net_device {TYPE_2__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {int AuthMode; int WepStatus; } ;
struct TYPE_5__ {TYPE_1__ StaCfg; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 int EOPNOTSUPP ;

 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;

 int IW_AUTH_INDEX ;

 int Ndis802_11AuthModeShared ;
 int Ndis802_11AuthModeWPA ;
 int Ndis802_11WEPDisabled ;
 int RTMP_TEST_FLAG (TYPE_2__*,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;

int rt_ioctl_giwauth(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;
 struct iw_param *param = &wrqu->param;


 if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
    DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
     return -ENETDOWN;
    }

 switch (param->flags & IW_AUTH_INDEX) {
 case 129:
        param->value = (pAdapter->StaCfg.WepStatus == Ndis802_11WEPDisabled) ? 0 : 1;
  break;

 case 130:
        param->value = (pAdapter->StaCfg.AuthMode == Ndis802_11AuthModeShared) ? IW_AUTH_ALG_SHARED_KEY : IW_AUTH_ALG_OPEN_SYSTEM;
  break;

 case 128:
  param->value = (pAdapter->StaCfg.AuthMode >= Ndis802_11AuthModeWPA) ? 1 : 0;
  break;

 default:
  return -EOPNOTSUPP;
 }
    DBGPRINT(RT_DEBUG_TRACE, ("rt_ioctl_giwauth::param->value = %d!\n", param->value));
 return 0;
}
