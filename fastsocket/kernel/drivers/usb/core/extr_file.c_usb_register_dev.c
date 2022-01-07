
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int minor; int usb_dev; int dev; } ;
struct usb_class_driver {int minor_base; char* name; int * fops; } ;
typedef int name ;
struct TYPE_2__ {int class; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_USB_MINORS ;
 int MKDEV (int ,int) ;
 int PTR_ERR (int ) ;
 int USB_MAJOR ;
 int dbg (char*,int) ;
 int device_create (int ,int *,int ,struct usb_class_driver*,char*,char*) ;
 int down_write (int *) ;
 int init_usb_class () ;
 int minor_rwsem ;
 int snprintf (char*,int,char*,int) ;
 char* strrchr (char*,char) ;
 int up_write (int *) ;
 TYPE_1__* usb_class ;
 int ** usb_minors ;

int usb_register_dev(struct usb_interface *intf,
       struct usb_class_driver *class_driver)
{
 int retval = -EINVAL;
 int minor_base = class_driver->minor_base;
 int minor = 0;
 char name[20];
 char *temp;
 intf->minor = -1;

 dbg ("looking for a minor, starting at %d", minor_base);

 if (class_driver->fops == ((void*)0))
  goto exit;

 down_write(&minor_rwsem);
 for (minor = minor_base; minor < MAX_USB_MINORS; ++minor) {
  if (usb_minors[minor])
   continue;

  usb_minors[minor] = class_driver->fops;

  retval = 0;
  break;
 }
 up_write(&minor_rwsem);

 if (retval)
  goto exit;

 retval = init_usb_class();
 if (retval)
  goto exit;

 intf->minor = minor;


 snprintf(name, sizeof(name), class_driver->name, minor - minor_base);
 temp = strrchr(name, '/');
 if (temp && (temp[1] != '\0'))
  ++temp;
 else
  temp = name;
 intf->usb_dev = device_create(usb_class->class, &intf->dev,
          MKDEV(USB_MAJOR, minor), class_driver,
          "%s", temp);
 if (IS_ERR(intf->usb_dev)) {
  down_write(&minor_rwsem);
  usb_minors[intf->minor] = ((void*)0);
  up_write(&minor_rwsem);
  retval = PTR_ERR(intf->usb_dev);
 }
exit:
 return retval;
}
