
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int fixed; scalar_t__ value; } ;



int usbdrvwext_giwsens(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_param *sens, char *extra)
{
 sens->value = 0;
 sens->fixed = 1;

 return 0;
}
