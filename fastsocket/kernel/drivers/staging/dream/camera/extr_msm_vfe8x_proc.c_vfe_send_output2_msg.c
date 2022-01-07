
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfe_msg_output {int dummy; } ;
struct TYPE_4__ {int msgOutput2; } ;
struct vfe_message {TYPE_1__ _u; int _d; } ;
struct TYPE_5__ {void* ackPending; } ;
struct TYPE_6__ {scalar_t__ vstate; int vfeRequestedSnapShotCount; scalar_t__ vfeOperationMode; TYPE_2__ encPath; } ;


 int GFP_ATOMIC ;
 void* TRUE ;
 int VFE_MSG_ID_OUTPUT2 ;
 scalar_t__ VFE_START_OPERATION_MODE_SNAPSHOT ;
 scalar_t__ VFE_STATE_ACTIVE ;
 TYPE_3__* ctrl ;
 int kfree (struct vfe_message*) ;
 struct vfe_message* kzalloc (int,int ) ;
 int memcpy (int *,void*,int) ;
 int vfe_proc_ops (int ,struct vfe_message*,int) ;

__attribute__((used)) static void vfe_send_output2_msg(
 struct vfe_msg_output *pPayload)
{

 struct vfe_message *msg;

 msg = kzalloc(sizeof(struct vfe_message), GFP_ATOMIC);
 if (!msg)
  return;




 if (ctrl->vstate != VFE_STATE_ACTIVE) {
  kfree(msg);
  goto output2_msg_done;
 }

 msg->_d = VFE_MSG_ID_OUTPUT2;

 memcpy(&(msg->_u.msgOutput2),
  (void *)pPayload, sizeof(struct vfe_msg_output));

 vfe_proc_ops(VFE_MSG_ID_OUTPUT2,
  msg, sizeof(struct vfe_message));

 ctrl->encPath.ackPending = TRUE;

 if (!(ctrl->vfeRequestedSnapShotCount <= 3) &&
   (ctrl->vfeOperationMode ==
    VFE_START_OPERATION_MODE_SNAPSHOT))
  ctrl->encPath.ackPending = TRUE;

output2_msg_done:

 return;
}
