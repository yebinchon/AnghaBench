
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfe_msg_output {int dummy; } ;
struct vfe_message {int _u; int _d; } ;
struct TYPE_3__ {void* ackPending; } ;
struct TYPE_4__ {scalar_t__ vstate; int vfeRequestedSnapShotCount; scalar_t__ vfeOperationMode; TYPE_1__ viewPath; } ;


 int GFP_ATOMIC ;
 void* TRUE ;
 int VFE_MSG_ID_OUTPUT1 ;
 scalar_t__ VFE_START_OPERATION_MODE_SNAPSHOT ;
 scalar_t__ VFE_STATE_ACTIVE ;
 TYPE_2__* ctrl ;
 int kfree (struct vfe_message*) ;
 struct vfe_message* kzalloc (int,int ) ;
 int memmove (int *,void*,int) ;
 int vfe_proc_ops (int ,struct vfe_message*,int) ;

__attribute__((used)) static void vfe_send_output1_msg(
 struct vfe_msg_output *pPayload)
{

 struct vfe_message *msg;

 msg = kzalloc(sizeof(struct vfe_message), GFP_ATOMIC);
 if (!msg)
  return;



 if (ctrl->vstate != VFE_STATE_ACTIVE) {
  kfree(msg);
  goto output1_msg_done;
 }

 msg->_d = VFE_MSG_ID_OUTPUT1;
 memmove(&(msg->_u),
  (void *)pPayload, sizeof(struct vfe_msg_output));

 vfe_proc_ops(VFE_MSG_ID_OUTPUT1,
  msg, sizeof(struct vfe_message));

 ctrl->viewPath.ackPending = TRUE;

 if (!(ctrl->vfeRequestedSnapShotCount <= 3) &&
   (ctrl->vfeOperationMode ==
    VFE_START_OPERATION_MODE_SNAPSHOT))
  ctrl->viewPath.ackPending = TRUE;

output1_msg_done:

 return;
}
