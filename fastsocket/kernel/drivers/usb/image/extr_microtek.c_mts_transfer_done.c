
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int dummy; } ;
struct TYPE_4__ {scalar_t__* scsi_status; TYPE_1__* srb; } ;
struct TYPE_3__ {unsigned int result; } ;


 int MTS_INT_INIT () ;
 unsigned int MTS_SCSI_ERR_MASK ;
 TYPE_2__* context ;
 int mts_transfer_cleanup (struct urb*) ;

__attribute__((used)) static void mts_transfer_done( struct urb *transfer )
{
 MTS_INT_INIT();

 context->srb->result &= MTS_SCSI_ERR_MASK;
 context->srb->result |= (unsigned)(*context->scsi_status)<<1;

 mts_transfer_cleanup(transfer);

 return;
}
