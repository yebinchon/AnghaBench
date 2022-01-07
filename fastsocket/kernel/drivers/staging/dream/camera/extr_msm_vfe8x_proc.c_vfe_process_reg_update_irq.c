
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vfeStartAckPendingFlag; } ;


 int CDBG (char*,scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int VFE_MSG_ID_START_ACK ;
 int VFE_MSG_ID_UPDATE_ACK ;
 TYPE_1__* ctrl ;
 int vfe_send_msg_no_payload (int ) ;

__attribute__((used)) static void vfe_process_reg_update_irq(void)
{
 CDBG("vfe_process_reg_update_irq: ackPendingFlag is %d\n",
 ctrl->vfeStartAckPendingFlag);
 if (ctrl->vfeStartAckPendingFlag == TRUE) {
  vfe_send_msg_no_payload(VFE_MSG_ID_START_ACK);
  ctrl->vfeStartAckPendingFlag = FALSE;
 } else
  vfe_send_msg_no_payload(VFE_MSG_ID_UPDATE_ACK);
}
