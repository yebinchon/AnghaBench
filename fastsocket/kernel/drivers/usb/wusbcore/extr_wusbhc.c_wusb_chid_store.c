
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct wusb_ckhdid {int * data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int dev_err (struct device*,char*,int) ;
 int sscanf (char const*,char*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 struct wusbhc* usbhc_dev_to_wusbhc (struct device*) ;
 int wusbhc_chid_set (struct wusbhc*,struct wusb_ckhdid*) ;

__attribute__((used)) static ssize_t wusb_chid_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t size)
{
 struct wusbhc *wusbhc = usbhc_dev_to_wusbhc(dev);
 struct wusb_ckhdid chid;
 ssize_t result;

 result = sscanf(buf,
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx\n",
   &chid.data[0] , &chid.data[1] ,
   &chid.data[2] , &chid.data[3] ,
   &chid.data[4] , &chid.data[5] ,
   &chid.data[6] , &chid.data[7] ,
   &chid.data[8] , &chid.data[9] ,
   &chid.data[10], &chid.data[11],
   &chid.data[12], &chid.data[13],
   &chid.data[14], &chid.data[15]);
 if (result != 16) {
  dev_err(dev, "Unrecognized CHID (need 16 8-bit hex digits): "
   "%d\n", (int)result);
  return -EINVAL;
 }
 result = wusbhc_chid_set(wusbhc, &chid);
 return result < 0 ? result : size;
}
