
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;
typedef int netdevice_t ;


 int EFAULT ;
 int p80211wext_giwrate (int *,int *,struct iw_param*,int *) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int p80211wext_giwname(netdevice_t *dev,
         struct iw_request_info *info,
         char *name, char *extra)
{
 struct iw_param rate;
 int result;
 int err = 0;

 result = p80211wext_giwrate(dev, ((void*)0), &rate, ((void*)0));

 if (result) {
  err = -EFAULT;
  goto exit;
 }

 switch (rate.value) {
 case 1000000:
 case 2000000:
  strcpy(name, "IEEE 802.11-DS");
  break;
 case 5500000:
 case 11000000:
  strcpy(name, "IEEE 802.11-b");
  break;
 }
exit:
 return err;
}
