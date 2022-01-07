
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbatm_data {struct usb_interface* usb_intf; struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct cxacru_data {int poll_state; TYPE_1__ poll_work; int adsl_state_serialize; int poll_state_serialize; } ;
struct atm_dev {int * esi; } ;


 int CM_REQUEST_CARD_GET_MAC_ADDRESS ;
 int CM_REQUEST_CHIP_ADSL_LINE_START ;
 int CREATE ;
 int CXACRU_ALL_FILES (int ) ;




 int atm_err (struct usbatm_data*,char*,int) ;
 int cxacru_cm (struct cxacru_data*,int ,int *,int ,int *,int) ;
 int cxacru_poll_status (int *) ;
 int cxacru_remove_device_files (struct usbatm_data*,struct atm_dev*) ;
 int dbg (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_err (struct usbatm_data*,char*,int) ;

__attribute__((used)) static int cxacru_atm_start(struct usbatm_data *usbatm_instance,
  struct atm_dev *atm_dev)
{
 struct cxacru_data *instance = usbatm_instance->driver_data;
 struct usb_interface *intf = usbatm_instance->usb_intf;



 int ret;
 int start_polling = 1;

 dbg("cxacru_atm_start");


 ret = cxacru_cm(instance, CM_REQUEST_CARD_GET_MAC_ADDRESS, ((void*)0), 0,
   atm_dev->esi, sizeof(atm_dev->esi));
 if (ret < 0) {
  atm_err(usbatm_instance, "cxacru_atm_start: CARD_GET_MAC_ADDRESS returned %d\n", ret);
  return ret;
 }





 CXACRU_ALL_FILES(CREATE);



 mutex_lock(&instance->adsl_state_serialize);
 ret = cxacru_cm(instance, CM_REQUEST_CHIP_ADSL_LINE_START, ((void*)0), 0, ((void*)0), 0);
 if (ret < 0)
  atm_err(usbatm_instance, "cxacru_atm_start: CHIP_ADSL_LINE_START returned %d\n", ret);


 mutex_lock(&instance->poll_state_serialize);
 switch (instance->poll_state) {
 case 129:

  instance->poll_state = 131;
  break;

 case 128:

  instance->poll_state = 131;
 case 131:
 case 130:

  start_polling = 0;
 }
 mutex_unlock(&instance->poll_state_serialize);
 mutex_unlock(&instance->adsl_state_serialize);

 if (start_polling)
  cxacru_poll_status(&instance->poll_work.work);
 return 0;

fail_sysfs:
 usb_err(usbatm_instance, "cxacru_atm_start: device_create_file failed (%d)\n", ret);
 cxacru_remove_device_files(usbatm_instance, atm_dev);
 return ret;
}
