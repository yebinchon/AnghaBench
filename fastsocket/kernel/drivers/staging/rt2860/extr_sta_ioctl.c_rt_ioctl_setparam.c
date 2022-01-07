
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct net_device {TYPE_1__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_9__ {char* name; int (* set_proc ) (TYPE_1__*,char*) ;} ;
struct TYPE_8__ {int ioctl_if; int ioctl_if_type; } ;
struct TYPE_7__ {int OS_Cookie; } ;
typedef TYPE_1__* PRTMP_ADAPTER ;
typedef TYPE_2__* POS_COOKIE ;


 int DBGPRINT (int ,char*) ;
 int EINVAL ;
 int ENETDOWN ;
 int INT_MAIN ;
 int MAIN_MBSSID ;
 TYPE_5__* PRTMP_PRIVATE_SET_PROC ;
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
 PRTMP_ADAPTER pAdapter = dev->ml_priv;
 POS_COOKIE pObj = (POS_COOKIE)pAdapter->OS_Cookie;
 char *this_char = extra;
 char *value;
 int Status=0;

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

 if (!value)
     return -EINVAL;


    if (!*value && (strcmp(this_char, "SSID") != 0))
        return -EINVAL;

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
