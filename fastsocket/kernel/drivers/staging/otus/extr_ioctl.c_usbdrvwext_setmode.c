
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;



int usbdrvwext_setmode(struct net_device *dev, struct iw_request_info *info,
   void *w, char *extra)
{
 return 0;
}
