
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_BAD ;
 int NOTIFY_OK ;




 int WARN_ON (int) ;
 int wusb_dev_add_ncb (void*) ;
 int wusb_dev_rm_ncb (void*) ;

int wusb_usb_ncb(struct notifier_block *nb, unsigned long val,
   void *priv)
{
 int result = NOTIFY_OK;

 switch (val) {
 case 129:
  wusb_dev_add_ncb(priv);
  break;
 case 128:
  wusb_dev_rm_ncb(priv);
  break;
 case 131:

 case 130:
  break;
 default:
  WARN_ON(1);
  result = NOTIFY_BAD;
 };
 return result;
}
