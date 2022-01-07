
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int usb_complete_t ;
struct urb {int dummy; } ;
struct TYPE_7__ {TYPE_2__* srb; TYPE_1__* instance; } ;
struct TYPE_6__ {int result; } ;
struct TYPE_5__ {int usb_dev; } ;


 int DID_ERROR ;
 int GFP_ATOMIC ;
 int MTS_INT_ERROR (char*,int) ;
 int MTS_INT_INIT () ;
 TYPE_3__* context ;
 int mts_transfer_cleanup (struct urb*) ;
 scalar_t__ unlikely (int) ;
 int usb_fill_bulk_urb (struct urb*,int ,int,void*,unsigned int,int ,TYPE_3__*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static inline
void mts_int_submit_urb (struct urb* transfer,
   int pipe,
   void* data,
   unsigned length,
   usb_complete_t callback )



{
 int res;

 MTS_INT_INIT();

 usb_fill_bulk_urb(transfer,
        context->instance->usb_dev,
        pipe,
        data,
        length,
        callback,
        context
  );

 res = usb_submit_urb( transfer, GFP_ATOMIC );
 if ( unlikely(res) ) {
  MTS_INT_ERROR( "could not submit URB! Error was %d\n",(int)res );
  context->srb->result = DID_ERROR << 16;
  mts_transfer_cleanup(transfer);
 }
 return;
}
