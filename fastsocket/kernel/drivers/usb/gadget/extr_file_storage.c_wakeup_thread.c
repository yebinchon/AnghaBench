
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_dev {int thread_wakeup_needed; scalar_t__ thread_task; } ;


 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void wakeup_thread(struct fsg_dev *fsg)
{

 fsg->thread_wakeup_needed = 1;
 if (fsg->thread_task)
  wake_up_process(fsg->thread_task);
}
