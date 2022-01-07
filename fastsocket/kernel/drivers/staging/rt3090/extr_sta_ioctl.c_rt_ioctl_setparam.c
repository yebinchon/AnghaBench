
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_10__ {char* name; int (* set_proc ) (TYPE_1__*,char*) ;} ;
struct TYPE_9__ {int ioctl_if; int ioctl_if_type; } ;
struct TYPE_8__ {scalar_t__ OS_Cookie; } ;
typedef char* PSTRING ;
typedef TYPE_1__* PRTMP_ADAPTER ;
typedef TYPE_2__* POS_COOKIE ;


 int DBGPRINT (int ,char*) ;
 int EINVAL ;
 int ENETDOWN ;
 int INT_MAIN ;
 int MAIN_MBSSID ;
 TYPE_5__* PRTMP_PRIVATE_SET_PROC ;
 TYPE_1__* RTMP_OS_NETDEV_GET_PRIV (struct net_device*) ;
 TYPE_5__* RTMP_PRIVATE_SUPPORT_PROC ;
 int RTMP_TEST_FLAG (TYPE_1__*,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;
 char* rtstrchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (TYPE_1__*,char*) ;

__attribute__((used)) static int
rt_ioctl_setparam(struct net_device *dev, struct iw_request_info *info,
    void *w, char *extra)
{
 PRTMP_ADAPTER pAdapter;
 POS_COOKIE pObj;
 PSTRING this_char = extra;
 PSTRING value;
 int Status=0;

 pAdapter = RTMP_OS_NETDEV_GET_PRIV(dev);
 if (pAdapter == ((void*)0))
 {


  return -ENETDOWN;
 }

 pObj = (POS_COOKIE) pAdapter->OS_Cookie;
 {
  pObj->ioctl_if_type = INT_MAIN;
        pObj->ioctl_if = MAIN_MBSSID;
 }


 if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
 {
  DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
   return -ENETDOWN;
 }

 if (!*this_char)
  return -EINVAL;

 if ((value = rtstrchr(this_char, '=')) != ((void*)0))
     *value++ = 0;

 if (!value && (strcmp(this_char, "SiteSurvey") != 0))
     return -EINVAL;
 else
  goto SET_PROC;


    if (!*value && (strcmp(this_char, "SSID") != 0))
        return -EINVAL;

SET_PROC:
 for (PRTMP_PRIVATE_SET_PROC = RTMP_PRIVATE_SUPPORT_PROC; PRTMP_PRIVATE_SET_PROC->name; PRTMP_PRIVATE_SET_PROC++)
 {
     if (strcmp(this_char, PRTMP_PRIVATE_SET_PROC->name) == 0)
     {
         if(!PRTMP_PRIVATE_SET_PROC->set_proc(pAdapter, value))
         {
       Status = -EINVAL;
         }
      break;
     }
 }

 if(PRTMP_PRIVATE_SET_PROC->name == ((void*)0))
 {
     Status = -EINVAL;
     DBGPRINT(RT_DEBUG_TRACE, ("===>rt_ioctl_setparam:: (iwpriv) Not Support Set Command [%s=%s]\n", this_char, value));
 }

    return Status;
}
