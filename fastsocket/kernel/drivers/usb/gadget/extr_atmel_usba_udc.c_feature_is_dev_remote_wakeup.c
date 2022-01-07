
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {scalar_t__ wValue; } ;


 int USB_DEVICE_REMOTE_WAKEUP ;
 scalar_t__ cpu_to_le16 (int ) ;

__attribute__((used)) static inline bool feature_is_dev_remote_wakeup(struct usb_ctrlrequest *crq)
{
 if (crq->wValue == cpu_to_le16(USB_DEVICE_REMOTE_WAKEUP))
  return 1;
 return 0;
}
