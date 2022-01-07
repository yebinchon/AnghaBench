
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int name; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int strcpy (int ,char*) ;

int usbdrvwext_giwname(struct net_device *dev,
  struct iw_request_info *info,
  union iwreq_data *wrq, char *extra)
{


 strcpy(wrq->name, "IEEE 802.11-MIMO");

 return 0;
}
