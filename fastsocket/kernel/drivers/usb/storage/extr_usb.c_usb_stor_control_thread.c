
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct us_data {int fflags; scalar_t__ max_lun; int dev_mutex; TYPE_2__* srb; int dflags; int notify; int (* proto_handler ) (TYPE_2__*,struct us_data*) ;int cmnd_ready; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int result; scalar_t__ sc_data_direction; scalar_t__* cmnd; int (* scsi_done ) (TYPE_2__*) ;TYPE_1__* device; } ;
struct TYPE_5__ {scalar_t__ lun; scalar_t__ id; } ;


 int DID_ABORT ;
 int DID_BAD_TARGET ;
 int DID_ERROR ;
 scalar_t__ DMA_BIDIRECTIONAL ;
 scalar_t__ INQUIRY ;
 int SAM_STAT_GOOD ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int US_DEBUG (int ) ;
 int US_DEBUGP (char*,...) ;
 int US_FLIDX_ABORTING ;
 int US_FLIDX_TIMED_OUT ;
 int US_FL_FIX_INQUIRY ;
 int US_FL_SCM_MULT_TARG ;
 int __set_current_state (int ) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int fill_inquiry_response (struct us_data*,unsigned char*,int) ;
 scalar_t__ kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule () ;
 int scsi_lock (struct Scsi_Host*) ;
 int scsi_unlock (struct Scsi_Host*) ;
 int set_current_state (int ) ;
 int stub1 (TYPE_2__*,struct us_data*) ;
 int stub2 (TYPE_2__*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct Scsi_Host* us_to_host (struct us_data*) ;
 int usb_stor_show_command (TYPE_2__*) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int usb_stor_control_thread(void * __us)
{
 struct us_data *us = (struct us_data *)__us;
 struct Scsi_Host *host = us_to_host(us);

 for(;;) {
  US_DEBUGP("*** thread sleeping.\n");
  if (wait_for_completion_interruptible(&us->cmnd_ready))
   break;

  US_DEBUGP("*** thread awakened.\n");


  mutex_lock(&(us->dev_mutex));


  scsi_lock(host);


  if (us->srb == ((void*)0)) {
   scsi_unlock(host);
   mutex_unlock(&us->dev_mutex);
   US_DEBUGP("-- exiting\n");
   break;
  }


  if (test_bit(US_FLIDX_TIMED_OUT, &us->dflags)) {
   us->srb->result = DID_ABORT << 16;
   goto SkipForAbort;
  }

  scsi_unlock(host);




  if (us->srb->sc_data_direction == DMA_BIDIRECTIONAL) {
   US_DEBUGP("UNKNOWN data direction\n");
   us->srb->result = DID_ERROR << 16;
  }




  else if (us->srb->device->id &&
    !(us->fflags & US_FL_SCM_MULT_TARG)) {
   US_DEBUGP("Bad target number (%d:%d)\n",
      us->srb->device->id, us->srb->device->lun);
   us->srb->result = DID_BAD_TARGET << 16;
  }

  else if (us->srb->device->lun > us->max_lun) {
   US_DEBUGP("Bad LUN (%d:%d)\n",
      us->srb->device->id, us->srb->device->lun);
   us->srb->result = DID_BAD_TARGET << 16;
  }



  else if ((us->srb->cmnd[0] == INQUIRY) &&
       (us->fflags & US_FL_FIX_INQUIRY)) {
   unsigned char data_ptr[36] = {
       0x00, 0x80, 0x02, 0x02,
       0x1F, 0x00, 0x00, 0x00};

   US_DEBUGP("Faking INQUIRY command\n");
   fill_inquiry_response(us, data_ptr, 36);
   us->srb->result = SAM_STAT_GOOD;
  }


  else {
   US_DEBUG(usb_stor_show_command(us->srb));
   us->proto_handler(us->srb, us);
  }


  scsi_lock(host);


  if (us->srb->result != DID_ABORT << 16) {
   US_DEBUGP("scsi cmd done, result=0x%x\n",
       us->srb->result);
   us->srb->scsi_done(us->srb);
  } else {
SkipForAbort:
   US_DEBUGP("scsi command aborted\n");
  }






  if (test_bit(US_FLIDX_TIMED_OUT, &us->dflags)) {
   complete(&(us->notify));


   clear_bit(US_FLIDX_ABORTING, &us->dflags);
   clear_bit(US_FLIDX_TIMED_OUT, &us->dflags);
  }


  us->srb = ((void*)0);
  scsi_unlock(host);


  mutex_unlock(&us->dev_mutex);
 }


 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (kthread_should_stop())
   break;
  schedule();
 }
 __set_current_state(TASK_RUNNING);
 return 0;
}
