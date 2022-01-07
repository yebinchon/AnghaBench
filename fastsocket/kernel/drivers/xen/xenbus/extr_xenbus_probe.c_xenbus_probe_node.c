
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int release; int * bus; } ;
struct xenbus_device {int state; char* nodename; char* devicetype; TYPE_1__ dev; int down; } ;
struct xen_bus_type {int (* get_bus_id ) (char*,char*) ;int bus; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XEN_BUS_ID_SIZE ;
 int XenbusStateInitialising ;
 int dev_set_name (TYPE_1__*,char*) ;
 int device_register (TYPE_1__*) ;
 int init_completion (int *) ;
 int kfree (struct xenbus_device*) ;
 struct xenbus_device* kzalloc (int,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int stub1 (char*,char*) ;
 int xenbus_dev_release ;
 int xenbus_read_driver_state (char const*) ;

int xenbus_probe_node(struct xen_bus_type *bus,
        const char *type,
        const char *nodename)
{
 char devname[XEN_BUS_ID_SIZE];
 int err;
 struct xenbus_device *xendev;
 size_t stringlen;
 char *tmpstring;

 enum xenbus_state state = xenbus_read_driver_state(nodename);

 if (state != XenbusStateInitialising) {


  return 0;
 }

 stringlen = strlen(nodename) + 1 + strlen(type) + 1;
 xendev = kzalloc(sizeof(*xendev) + stringlen, GFP_KERNEL);
 if (!xendev)
  return -ENOMEM;

 xendev->state = XenbusStateInitialising;



 tmpstring = (char *)(xendev + 1);
 strcpy(tmpstring, nodename);
 xendev->nodename = tmpstring;

 tmpstring += strlen(tmpstring) + 1;
 strcpy(tmpstring, type);
 xendev->devicetype = tmpstring;
 init_completion(&xendev->down);

 xendev->dev.bus = &bus->bus;
 xendev->dev.release = xenbus_dev_release;

 err = bus->get_bus_id(devname, xendev->nodename);
 if (err)
  goto fail;

 dev_set_name(&xendev->dev, devname);


 err = device_register(&xendev->dev);
 if (err)
  goto fail;

 return 0;
fail:
 kfree(xendev);
 return err;
}
