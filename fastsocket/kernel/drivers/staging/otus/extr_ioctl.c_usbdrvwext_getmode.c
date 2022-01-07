
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int pointer; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,char*,int) ;
 int strcpy (char*,char*) ;

int usbdrvwext_getmode(struct net_device *dev, struct iw_request_info *info,
   void *w, char *extra)
{

 struct iw_point *wri = (struct iw_point *)extra;
 char mode[8];

 strcpy(mode, "11g");
 return copy_to_user(wri->pointer, mode, 6) ? -EFAULT : 0;
}
