
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vfeStopAckPending; int vstate; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int VFE_MSG_ID_RESET_ACK ;
 int VFE_MSG_ID_STOP_ACK ;
 int VFE_STATE_IDLE ;
 TYPE_1__* ctrl ;
 int vfe_send_msg_no_payload (int ) ;
 int vfe_set_default_reg_values () ;

__attribute__((used)) static void vfe_process_reset_irq(void)
{




 ctrl->vstate = VFE_STATE_IDLE;


 if (ctrl->vfeStopAckPending == TRUE) {
  ctrl->vfeStopAckPending = FALSE;
  vfe_send_msg_no_payload(VFE_MSG_ID_STOP_ACK);
 } else {
  vfe_set_default_reg_values();
  vfe_send_msg_no_payload(VFE_MSG_ID_RESET_ACK);
 }
}
