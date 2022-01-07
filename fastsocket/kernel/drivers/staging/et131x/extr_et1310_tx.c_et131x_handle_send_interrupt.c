
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {int dummy; } ;


 int et131x_check_send_wait_list (struct et131x_adapter*) ;
 int et131x_update_tcb_list (struct et131x_adapter*) ;

void et131x_handle_send_interrupt(struct et131x_adapter *etdev)
{

 et131x_update_tcb_list(etdev);




 et131x_check_send_wait_list(etdev);
}
