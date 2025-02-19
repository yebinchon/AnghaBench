
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {char* sa_data; int sa_family; } ;
struct net_device {TYPE_3__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_quality {char* sa_data; int sa_family; } ;
struct iw_point {int length; int flags; } ;
typedef int qual ;
typedef int addr ;
struct TYPE_7__ {int BssNr; TYPE_1__* BssEntry; } ;
struct TYPE_8__ {TYPE_2__ ScanTab; } ;
struct TYPE_6__ {int Rssi; struct sockaddr* Bssid; } ;
typedef TYPE_3__* PRTMP_ADAPTER ;


 int ARPHRD_ETHER ;
 int DBGPRINT (int ,char*) ;
 int IW_MAX_AP ;
 int MAC_ADDR_LEN ;
 int RTMP_TEST_FLAG (TYPE_3__*,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;
 int memcpy (char*,struct sockaddr**,int) ;
 int set_quality (TYPE_3__*,struct sockaddr*,int ) ;

int rt_ioctl_iwaplist(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_point *data, char *extra)
{
  PRTMP_ADAPTER pAdapter = dev->ml_priv;

 struct sockaddr addr[IW_MAX_AP];
 struct iw_quality qual[IW_MAX_AP];
 int i;


    if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
        DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
  data->length = 0;
  return 0;

 }

 for (i = 0; i <IW_MAX_AP ; i++)
 {
  if (i >= pAdapter->ScanTab.BssNr)
   break;
  addr[i].sa_family = ARPHRD_ETHER;
   memcpy(addr[i].sa_data, &pAdapter->ScanTab.BssEntry[i].Bssid, MAC_ADDR_LEN);
  set_quality(pAdapter, &qual[i], pAdapter->ScanTab.BssEntry[i].Rssi);
 }
 data->length = i;
 memcpy(extra, &addr, i*sizeof(addr[0]));
 data->flags = 1;
 memcpy(extra + i*sizeof(addr[0]), &qual, i*sizeof(qual[i]));

 return 0;
}
