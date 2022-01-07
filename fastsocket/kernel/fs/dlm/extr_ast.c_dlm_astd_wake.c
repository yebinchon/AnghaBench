
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WAKE_ASTS ;
 int astd_task ;
 int astd_wakeflags ;
 int no_asts () ;
 int set_bit (int ,int *) ;
 int wake_up_process (int ) ;

void dlm_astd_wake(void)
{
 if (!no_asts()) {
  set_bit(WAKE_ASTS, &astd_wakeflags);
  wake_up_process(astd_task);
 }
}
