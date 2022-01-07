
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int frameCounter; int afBuffer; } ;
struct TYPE_7__ {TYPE_2__ msgStatsAf; } ;
struct vfe_message {TYPE_3__ _u; int _d; } ;
struct TYPE_5__ {int ackPending; } ;
struct TYPE_8__ {scalar_t__ vstate; TYPE_1__ afStatsControl; int vfeFrameId; } ;


 int GFP_ATOMIC ;
 int TRUE ;
 int VFE_MSG_ID_STATS_AUTOFOCUS ;
 scalar_t__ VFE_STATE_ACTIVE ;
 TYPE_4__* ctrl ;
 int kfree (struct vfe_message*) ;
 struct vfe_message* kzalloc (int,int ) ;
 int vfe_proc_ops (int ,struct vfe_message*,int) ;

__attribute__((used)) static void
vfe_send_af_stats_msg(uint32_t afBufAddress)
{

 struct vfe_message *msg;
 msg =
  kzalloc(sizeof(struct vfe_message), GFP_ATOMIC);
 if (!msg)
  return;




 if (ctrl->vstate != VFE_STATE_ACTIVE) {
  kfree(msg);
  goto af_stats_done;
 }

 msg->_d = VFE_MSG_ID_STATS_AUTOFOCUS;
 msg->_u.msgStatsAf.afBuffer = afBufAddress;
 msg->_u.msgStatsAf.frameCounter = ctrl->vfeFrameId;

 vfe_proc_ops(VFE_MSG_ID_STATS_AUTOFOCUS,
  msg, sizeof(struct vfe_message));

 ctrl->afStatsControl.ackPending = TRUE;

af_stats_done:

 return;
}
