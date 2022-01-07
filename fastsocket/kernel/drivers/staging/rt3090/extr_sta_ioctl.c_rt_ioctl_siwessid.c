
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; scalar_t__ flags; } ;
typedef char* PSTRING ;
typedef int PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int E2BIG ;
 int EINVAL ;
 int ENETDOWN ;
 int ENOMEM ;
 scalar_t__ FALSE ;
 scalar_t__ IW_ESSID_MAX_SIZE ;
 scalar_t__ MAX_LEN_OF_SSID ;
 int MEM_ALLOC_FLAG ;
 int NdisMoveMemory (char*,char*,scalar_t__) ;
 int NdisZeroMemory (char*,scalar_t__) ;
 int RTMP_OS_NETDEV_GET_PRIV (struct net_device*) ;
 int RTMP_TEST_FLAG (int ,int ) ;
 int RT_DEBUG_TRACE ;
 scalar_t__ Set_SSID_Proc (int ,char*) ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;
 char* kmalloc (scalar_t__,int ) ;

int rt_ioctl_siwessid(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *data, char *essid)
{
 PRTMP_ADAPTER pAdapter = RTMP_OS_NETDEV_GET_PRIV(dev);


    if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
 DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
 return -ENETDOWN;
    }

 if (data->flags)
 {
  PSTRING pSsidString = ((void*)0);


  if (data->length > (IW_ESSID_MAX_SIZE + 1))
   return -E2BIG;

  pSsidString = kmalloc(MAX_LEN_OF_SSID+1, MEM_ALLOC_FLAG);
  if (pSsidString)
        {
   NdisZeroMemory(pSsidString, MAX_LEN_OF_SSID+1);
   NdisMoveMemory(pSsidString, essid, data->length);
   if (Set_SSID_Proc(pAdapter, pSsidString) == FALSE)
    return -EINVAL;
  }
  else
   return -ENOMEM;
  }
 else
    {

  if (Set_SSID_Proc(pAdapter, "") == FALSE)
   return -EINVAL;
    }
 return 0;
}
