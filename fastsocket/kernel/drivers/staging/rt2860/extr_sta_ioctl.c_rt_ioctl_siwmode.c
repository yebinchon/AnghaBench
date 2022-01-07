
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {TYPE_2__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;
struct TYPE_5__ {int WpaState; } ;
struct TYPE_6__ {TYPE_1__ StaCfg; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int EINVAL ;
 int ENETDOWN ;



 int RTMP_TEST_FLAG (TYPE_2__*,int ) ;
 int RT_DEBUG_TRACE ;
 int SS_NOTUSE ;
 int Set_NetworkType_Proc (TYPE_2__*,char*) ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;

int rt_ioctl_siwmode(struct net_device *dev,
     struct iw_request_info *info,
     __u32 *mode, char *extra)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;


    if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
     DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
        return -ENETDOWN;
    }

 switch (*mode)
 {
  case 130:
   Set_NetworkType_Proc(pAdapter, "Adhoc");
   break;
  case 129:
   Set_NetworkType_Proc(pAdapter, "Infra");
   break;
        case 128:
   Set_NetworkType_Proc(pAdapter, "Monitor");
   break;
  default:
   DBGPRINT(RT_DEBUG_TRACE, ("===>rt_ioctl_siwmode::SIOCSIWMODE (unknown %d)\n", *mode));
   return -EINVAL;
 }


 pAdapter->StaCfg.WpaState = SS_NOTUSE;

 return 0;
}
