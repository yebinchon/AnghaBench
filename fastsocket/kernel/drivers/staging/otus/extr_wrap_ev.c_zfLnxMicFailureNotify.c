
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int wrqu ;
struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef int u16_t ;


 int IWEVCUSTOM ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int memset (union iwreq_data*,int ,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 int wireless_send_event (int *,int ,union iwreq_data*,char*) ;
 scalar_t__ zfiWlanQueryWlanMode (int *) ;

void zfLnxMicFailureNotify(zdev_t* dev, u16_t* addr, u16_t status)
{
 static const char *tag = "MLME-MICHAELMICFAILURE.indication";
 union iwreq_data wrqu;
 char buf[128];






 if (zfiWlanQueryWlanMode(dev) == ZM_MODE_INFRASTRUCTURE)
 {
  strcpy(buf, tag);
 }

 memset(&wrqu, 0, sizeof(wrqu));
 wrqu.data.length = strlen(buf);
 wireless_send_event(dev, IWEVCUSTOM, &wrqu, buf);
}
