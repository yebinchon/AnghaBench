
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VFE_MSG_ID_ASYNC_TIMER0_DONE ;
 int vfe_send_msg_no_payload (int ) ;

__attribute__((used)) static void vfe_send_async_timer_msg(void)
{
 vfe_send_msg_no_payload(VFE_MSG_ID_ASYNC_TIMER0_DONE);
}
