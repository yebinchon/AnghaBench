
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct async {int mem_usage; TYPE_1__* urb; int pid; } ;
struct TYPE_2__ {struct async* setup_packet; struct async* transfer_buffer; } ;


 int kfree (struct async*) ;
 int put_pid (int ) ;
 int usb_free_urb (TYPE_1__*) ;
 int usbfs_decrease_memory_usage (int ) ;

__attribute__((used)) static void free_async(struct async *as)
{
 put_pid(as->pid);
 kfree(as->urb->transfer_buffer);
 kfree(as->urb->setup_packet);
 usb_free_urb(as->urb);
 usbfs_decrease_memory_usage(as->mem_usage);
 kfree(as);
}
