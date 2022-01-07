
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbatm_data {struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct cxacru_data {int poll_state; TYPE_1__ poll_work; int adsl_state_serialize; int poll_state_serialize; } ;
typedef int ssize_t ;


 int CAP_NET_ADMIN ;
 int CM_REQUEST_CHIP_ADSL_LINE_START ;
 int CM_REQUEST_CHIP_ADSL_LINE_STOP ;




 int EACCES ;
 int EINVAL ;
 int EIO ;
 int ERESTARTSYS ;
 int atm_err (struct usbatm_data*,char*,int) ;
 int capable (int ) ;
 int cxacru_cm (struct cxacru_data*,int ,int *,int ,int *,int ) ;
 int cxacru_poll_status (int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,char*) ;
 int strcmp (char*,char*) ;
 int strlen (char const*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usbatm_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t cxacru_sysfs_store_adsl_state(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usbatm_data *usbatm_instance = usb_get_intfdata(intf);
 struct cxacru_data *instance = usbatm_instance->driver_data;
 int ret;
 int poll = -1;
 char str_cmd[8];
 int len = strlen(buf);

 if (!capable(CAP_NET_ADMIN))
  return -EACCES;

 ret = sscanf(buf, "%7s", str_cmd);
 if (ret != 1)
  return -EINVAL;
 ret = 0;

 if (mutex_lock_interruptible(&instance->adsl_state_serialize))
  return -ERESTARTSYS;

 if (!strcmp(str_cmd, "stop") || !strcmp(str_cmd, "restart")) {
  ret = cxacru_cm(instance, CM_REQUEST_CHIP_ADSL_LINE_STOP, ((void*)0), 0, ((void*)0), 0);
  if (ret < 0) {
   atm_err(usbatm_instance, "change adsl state:"
    " CHIP_ADSL_LINE_STOP returned %d\n", ret);

   ret = -EIO;
  } else {
   ret = len;
   poll = 129;
  }
 }





 if (!strcmp(str_cmd, "restart"))
  msleep(1500);

 if (!strcmp(str_cmd, "start") || !strcmp(str_cmd, "restart")) {
  ret = cxacru_cm(instance, CM_REQUEST_CHIP_ADSL_LINE_START, ((void*)0), 0, ((void*)0), 0);
  if (ret < 0) {
   atm_err(usbatm_instance, "change adsl state:"
    " CHIP_ADSL_LINE_START returned %d\n", ret);

   ret = -EIO;
  } else {
   ret = len;
   poll = 131;
  }
 }

 if (!strcmp(str_cmd, "poll")) {
  ret = len;
  poll = 131;
 }

 if (ret == 0) {
  ret = -EINVAL;
  poll = -1;
 }

 if (poll == 131) {
  mutex_lock(&instance->poll_state_serialize);
  switch (instance->poll_state) {
  case 129:

   instance->poll_state = 131;
   break;

  case 128:

   instance->poll_state = 131;
  case 131:
  case 130:

   poll = -1;
  }
  mutex_unlock(&instance->poll_state_serialize);
 } else if (poll == 129) {
  mutex_lock(&instance->poll_state_serialize);

  if (instance->poll_state == 131)
   instance->poll_state = 128;
  mutex_unlock(&instance->poll_state_serialize);
 }

 mutex_unlock(&instance->adsl_state_serialize);

 if (poll == 131)
  cxacru_poll_status(&instance->poll_work.work);

 return ret;
}
