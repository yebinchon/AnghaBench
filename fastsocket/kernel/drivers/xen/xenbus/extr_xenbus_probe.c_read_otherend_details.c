
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; int otherend; int otherend_id; } ;


 int ENOENT ;
 int XBT_NIL ;
 int free_otherend_details (struct xenbus_device*) ;
 scalar_t__ strlen (int ) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,int ) ;
 int xenbus_exists (int ,int ,char*) ;
 int xenbus_gather (int ,int ,char*,char*,int *,char*,int *,int *,int *) ;

int read_otherend_details(struct xenbus_device *xendev,
     char *id_node, char *path_node)
{
 int err = xenbus_gather(XBT_NIL, xendev->nodename,
    id_node, "%i", &xendev->otherend_id,
    path_node, ((void*)0), &xendev->otherend,
    ((void*)0));
 if (err) {
  xenbus_dev_fatal(xendev, err,
     "reading other end details from %s",
     xendev->nodename);
  return err;
 }
 if (strlen(xendev->otherend) == 0 ||
     !xenbus_exists(XBT_NIL, xendev->otherend, "")) {
  xenbus_dev_fatal(xendev, -ENOENT,
     "unable to read other end from %s.  "
     "missing or inaccessible.",
     xendev->nodename);
  free_otherend_details(xendev);
  return -ENOENT;
 }

 return 0;
}
