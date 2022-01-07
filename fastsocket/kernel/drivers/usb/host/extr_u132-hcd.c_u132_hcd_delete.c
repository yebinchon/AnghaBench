
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct u132 {int going; struct platform_device* platform_dev; int u132_list; } ;
struct platform_device {int dev; } ;
struct kref {int dummy; } ;


 int dev_warn (int *,char*,struct usb_hcd*,struct u132*,int,struct platform_device*) ;
 struct u132* kref_to_u132 (struct kref*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int u132_instances ;
 int u132_module_lock ;
 struct usb_hcd* u132_to_hcd (struct u132*) ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static void u132_hcd_delete(struct kref *kref)
{
 struct u132 *u132 = kref_to_u132(kref);
 struct platform_device *pdev = u132->platform_dev;
 struct usb_hcd *hcd = u132_to_hcd(u132);
 u132->going += 1;
 mutex_lock(&u132_module_lock);
 list_del_init(&u132->u132_list);
 u132_instances -= 1;
 mutex_unlock(&u132_module_lock);
 dev_warn(&u132->platform_dev->dev, "FREEING the hcd=%p and thus the u13"
  "2=%p going=%d pdev=%p\n", hcd, u132, u132->going, pdev);
 usb_put_hcd(hcd);
}
