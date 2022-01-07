
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stub_unlink {int list; void* status; void* seqnum; } ;
struct stub_device {int unlink_tx; int ud; TYPE_1__* interface; } ;
typedef void* __u32 ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 int VDEV_EVENT_ERROR_MALLOC ;
 int dev_err (int *,char*) ;
 struct stub_unlink* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int usbip_event_add (int *,int ) ;

void stub_enqueue_ret_unlink(struct stub_device *sdev, __u32 seqnum,
        __u32 status)
{
 struct stub_unlink *unlink;

 unlink = kzalloc(sizeof(struct stub_unlink), GFP_ATOMIC);
 if (!unlink) {
  dev_err(&sdev->interface->dev, "alloc stub_unlink\n");
  usbip_event_add(&sdev->ud, VDEV_EVENT_ERROR_MALLOC);
  return;
 }

 unlink->seqnum = seqnum;
 unlink->status = status;

 list_add_tail(&unlink->list, &sdev->unlink_tx);
}
