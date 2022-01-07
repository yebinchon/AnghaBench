
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fsg_dev {int data_dir; int bulk_out; int short_packet_received; int residue; struct fsg_buffhd* next_buffhd_to_fill; int bulk_in; TYPE_1__* curlun; int data_size; } ;
struct fsg_buffhd {struct fsg_buffhd* next; int state; int inreq_busy; TYPE_2__* inreq; } ;
struct TYPE_6__ {int can_stall; } ;
struct TYPE_5__ {int zero; } ;
struct TYPE_4__ {int sense_data; } ;


 int BUF_STATE_EMPTY ;




 int EINTR ;
 int FSG_STATE_ABORT_BULK_OUT ;
 int SS_NO_SENSE ;
 int fsg_set_halt (struct fsg_dev*,int ) ;
 int halt_bulk_in_endpoint (struct fsg_dev*) ;
 TYPE_3__ mod_data ;
 int pad_with_zeros (struct fsg_dev*) ;
 int raise_exception (struct fsg_dev*,int ) ;
 int start_transfer (struct fsg_dev*,int ,TYPE_2__*,int *,int *) ;
 int throw_away_data (struct fsg_dev*) ;
 int transport_is_bbb () ;

__attribute__((used)) static int finish_reply(struct fsg_dev *fsg)
{
 struct fsg_buffhd *bh = fsg->next_buffhd_to_fill;
 int rc = 0;

 switch (fsg->data_dir) {
 case 130:
  break;





 case 128:
  if (mod_data.can_stall) {
   fsg_set_halt(fsg, fsg->bulk_out);
   rc = halt_bulk_in_endpoint(fsg);
  }
  break;


 case 129:
  if (fsg->data_size == 0)
   ;


  else if (fsg->residue == 0) {
   bh->inreq->zero = 0;
   start_transfer(fsg, fsg->bulk_in, bh->inreq,
     &bh->inreq_busy, &bh->state);
   fsg->next_buffhd_to_fill = bh->next;
  }







  else if (!transport_is_bbb()) {
   if (mod_data.can_stall &&
     fsg->residue == fsg->data_size &&
 (!fsg->curlun || fsg->curlun->sense_data != SS_NO_SENSE)) {
    bh->state = BUF_STATE_EMPTY;
    rc = halt_bulk_in_endpoint(fsg);
   } else {
    bh->inreq->zero = 1;
    start_transfer(fsg, fsg->bulk_in, bh->inreq,
      &bh->inreq_busy, &bh->state);
    fsg->next_buffhd_to_fill = bh->next;
   }
  }




  else {
   if (mod_data.can_stall) {
    bh->inreq->zero = 1;
    start_transfer(fsg, fsg->bulk_in, bh->inreq,
      &bh->inreq_busy, &bh->state);
    fsg->next_buffhd_to_fill = bh->next;
    rc = halt_bulk_in_endpoint(fsg);
   } else
    rc = pad_with_zeros(fsg);
  }
  break;



 case 131:
  if (fsg->residue == 0)
   ;


  else if (fsg->short_packet_received) {
   raise_exception(fsg, FSG_STATE_ABORT_BULK_OUT);
   rc = -EINTR;
  }
  else
   rc = throw_away_data(fsg);
  break;
 }
 return rc;
}
