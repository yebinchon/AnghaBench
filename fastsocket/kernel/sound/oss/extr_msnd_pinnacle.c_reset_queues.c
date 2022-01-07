
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int DARF; int DAPF; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 TYPE_1__ dev ;
 int msnd_fifo_make_empty (int *) ;
 int reset_play_queue () ;
 int reset_record_queue () ;

__attribute__((used)) static void reset_queues(void)
{
 if (dev.mode & FMODE_WRITE) {
  msnd_fifo_make_empty(&dev.DAPF);
  reset_play_queue();
 }
 if (dev.mode & FMODE_READ) {
  msnd_fifo_make_empty(&dev.DARF);
  reset_record_queue();
 }
}
