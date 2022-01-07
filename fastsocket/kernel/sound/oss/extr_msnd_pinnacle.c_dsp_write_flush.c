
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; } ;
struct TYPE_7__ {int mode; int flags; TYPE_1__ DAPF; int writeflush; } ;
struct TYPE_6__ {int state; } ;


 int DAP_BUFF_SIZE ;
 int FMODE_WRITE ;
 int F_WRITEFLUSH ;
 int F_WRITING ;
 int TASK_INTERRUPTIBLE ;
 int clear_bit (int ,int *) ;
 TYPE_2__* current ;
 TYPE_3__ dev ;
 int get_play_delay_jiffies (int ) ;
 int interruptible_sleep_on_timeout (int *,int ) ;
 int schedule_timeout (int ) ;
 int set_bit (int ,int *) ;
 int signal_pending (TYPE_2__*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void dsp_write_flush(void)
{
 if (!(dev.mode & FMODE_WRITE) || !test_bit(F_WRITING, &dev.flags))
  return;
 set_bit(F_WRITEFLUSH, &dev.flags);
 interruptible_sleep_on_timeout(
  &dev.writeflush,
  get_play_delay_jiffies(dev.DAPF.len));
 clear_bit(F_WRITEFLUSH, &dev.flags);
 if (!signal_pending(current)) {
  current->state = TASK_INTERRUPTIBLE;
  schedule_timeout(get_play_delay_jiffies(DAP_BUFF_SIZE));
 }
 clear_bit(F_WRITING, &dev.flags);
}
