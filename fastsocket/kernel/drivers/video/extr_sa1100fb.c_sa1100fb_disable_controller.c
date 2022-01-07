
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100fb_info {int ctrlr_wait; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int DPRINTK (char*) ;
 int GPCR ;
 int HZ ;
 int LCCR0 ;
 int LCCR0_LDM ;
 int LCCR0_LEN ;
 int LCSR ;
 int SHANNON_GPIO_DISP_EN ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 scalar_t__ machine_is_shannon () ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int wait ;

__attribute__((used)) static void sa1100fb_disable_controller(struct sa1100fb_info *fbi)
{
 DECLARE_WAITQUEUE(wait, current);

 DPRINTK("Disabling LCD controller\n");

 if (machine_is_shannon()) {
  GPCR |= SHANNON_GPIO_DISP_EN;
 }

 set_current_state(TASK_UNINTERRUPTIBLE);
 add_wait_queue(&fbi->ctrlr_wait, &wait);

 LCSR = 0xffffffff;
 LCCR0 &= ~LCCR0_LDM;
 LCCR0 &= ~LCCR0_LEN;

 schedule_timeout(20 * HZ / 1000);
 remove_wait_queue(&fbi->ctrlr_wait, &wait);
}
