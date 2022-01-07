
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_dev {scalar_t__ state; int thread_notifier; int atomic_bitflags; int lock; int * thread_task; int running; } ;


 scalar_t__ FSG_STATE_DATA_PHASE ;
 scalar_t__ FSG_STATE_IDLE ;
 scalar_t__ FSG_STATE_STATUS_PHASE ;
 scalar_t__ FSG_STATE_TERMINATED ;
 int REGISTERED ;
 int SIGINT ;
 int SIGKILL ;
 int SIGTERM ;
 int SIGUSR1 ;
 int allow_signal (int ) ;
 int complete_and_exit (int *,int ) ;
 int current ;
 scalar_t__ do_scsi_command (struct fsg_dev*) ;
 scalar_t__ exception_in_progress (struct fsg_dev*) ;
 scalar_t__ finish_reply (struct fsg_dev*) ;
 int fsg_driver ;
 int get_ds () ;
 scalar_t__ get_next_command (struct fsg_dev*) ;
 int handle_exception (struct fsg_dev*) ;
 scalar_t__ send_status (struct fsg_dev*) ;
 int set_freezable () ;
 int set_fs (int ) ;
 scalar_t__ signal_pending (int ) ;
 int sleep_thread (struct fsg_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int usb_gadget_unregister_driver (int *) ;

__attribute__((used)) static int fsg_main_thread(void *fsg_)
{
 struct fsg_dev *fsg = fsg_;



 allow_signal(SIGINT);
 allow_signal(SIGTERM);
 allow_signal(SIGKILL);
 allow_signal(SIGUSR1);


 set_freezable();




 set_fs(get_ds());


 while (fsg->state != FSG_STATE_TERMINATED) {
  if (exception_in_progress(fsg) || signal_pending(current)) {
   handle_exception(fsg);
   continue;
  }

  if (!fsg->running) {
   sleep_thread(fsg);
   continue;
  }

  if (get_next_command(fsg))
   continue;

  spin_lock_irq(&fsg->lock);
  if (!exception_in_progress(fsg))
   fsg->state = FSG_STATE_DATA_PHASE;
  spin_unlock_irq(&fsg->lock);

  if (do_scsi_command(fsg) || finish_reply(fsg))
   continue;

  spin_lock_irq(&fsg->lock);
  if (!exception_in_progress(fsg))
   fsg->state = FSG_STATE_STATUS_PHASE;
  spin_unlock_irq(&fsg->lock);

  if (send_status(fsg))
   continue;

  spin_lock_irq(&fsg->lock);
  if (!exception_in_progress(fsg))
   fsg->state = FSG_STATE_IDLE;
  spin_unlock_irq(&fsg->lock);
  }

 spin_lock_irq(&fsg->lock);
 fsg->thread_task = ((void*)0);
 spin_unlock_irq(&fsg->lock);



 if (test_and_clear_bit(REGISTERED, &fsg->atomic_bitflags))
  usb_gadget_unregister_driver(&fsg_driver);


 complete_and_exit(&fsg->thread_notifier, 0);
}
