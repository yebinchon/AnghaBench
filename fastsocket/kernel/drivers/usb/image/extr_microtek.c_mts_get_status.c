
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int dummy; } ;
struct TYPE_4__ {int scsi_status; TYPE_1__* instance; } ;
struct TYPE_3__ {int ep_response; int usb_dev; } ;


 int MTS_INT_INIT () ;
 TYPE_2__* context ;
 int mts_int_submit_urb (struct urb*,int ,int ,int,int ) ;
 int mts_transfer_done ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static void mts_get_status( struct urb *transfer )

{
 MTS_INT_INIT();

 mts_int_submit_urb(transfer,
      usb_rcvbulkpipe(context->instance->usb_dev,
        context->instance->ep_response),
      context->scsi_status,
      1,
      mts_transfer_done );
}
