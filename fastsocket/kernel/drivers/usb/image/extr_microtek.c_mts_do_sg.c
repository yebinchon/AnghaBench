
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int status; } ;
struct scatterlist {int length; } ;
struct TYPE_5__ {size_t fragment; TYPE_1__* srb; int data_pipe; } ;
struct TYPE_4__ {int result; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 int ENOENT ;
 int MTS_DEBUG (char*,size_t,int) ;
 int MTS_INT_INIT () ;
 TYPE_3__* context ;
 void mts_data_done (struct urb*) ;
 int mts_int_submit_urb (struct urb*,int ,int ,int ,void (*) (struct urb*)) ;
 int mts_transfer_cleanup (struct urb*) ;
 int scsi_sg_count (TYPE_1__*) ;
 struct scatterlist* scsi_sglist (TYPE_1__*) ;
 int sg_virt (struct scatterlist*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mts_do_sg (struct urb* transfer)
{
 struct scatterlist * sg;
 int status = transfer->status;
 MTS_INT_INIT();

 MTS_DEBUG("Processing fragment %d of %d\n", context->fragment,
                                           scsi_sg_count(context->srb));

 if (unlikely(status)) {
                context->srb->result = (status == -ENOENT ? DID_ABORT : DID_ERROR)<<16;
  mts_transfer_cleanup(transfer);
        }

 sg = scsi_sglist(context->srb);
 context->fragment++;
 mts_int_submit_urb(transfer,
      context->data_pipe,
      sg_virt(&sg[context->fragment]),
      sg[context->fragment].length,
      context->fragment + 1 == scsi_sg_count(context->srb) ?
      mts_data_done : mts_do_sg);
 return;
}
