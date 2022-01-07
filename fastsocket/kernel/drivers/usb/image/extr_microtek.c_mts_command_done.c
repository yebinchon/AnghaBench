
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; } ;
struct TYPE_4__ {TYPE_1__* srb; int data_length; scalar_t__ data; int data_pipe; } ;
struct TYPE_3__ {int result; scalar_t__* cmnd; scalar_t__ sense_buffer; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 int ENOENT ;
 int MTS_DEBUG_GOT_HERE () ;
 int MTS_INT_INIT () ;
 scalar_t__ REQUEST_SENSE ;
 TYPE_2__* context ;
 int mts_data_done ;
 int mts_do_sg ;
 int mts_get_status (struct urb*) ;
 int mts_int_submit_urb (struct urb*,int ,scalar_t__,int ,int ) ;
 int mts_transfer_cleanup (struct urb*) ;
 int scsi_sg_count (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mts_command_done( struct urb *transfer )

{
 int status = transfer->status;
 MTS_INT_INIT();

 if ( unlikely(status) ) {
         if (status == -ENOENT) {

   MTS_DEBUG_GOT_HERE();
   context->srb->result = DID_ABORT<<16;
                } else {

   MTS_DEBUG_GOT_HERE();

          context->srb->result = DID_ERROR<<16;
                }
  mts_transfer_cleanup(transfer);

  return;
 }

 if (context->srb->cmnd[0] == REQUEST_SENSE) {
  mts_int_submit_urb(transfer,
       context->data_pipe,
       context->srb->sense_buffer,
       context->data_length,
       mts_data_done);
 } else { if ( context->data ) {
   mts_int_submit_urb(transfer,
        context->data_pipe,
        context->data,
        context->data_length,
        scsi_sg_count(context->srb) > 1 ?
                mts_do_sg : mts_data_done);
  } else {
   mts_get_status(transfer);
  }
 }

 return;
}
