
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int msg_id; size_t len; void* data; int type; } ;
struct msm_vfe_resp {void* type; TYPE_1__ evt_msg; int phy; int extlen; int extdata; } ;
typedef enum VFE_MESSAGE_ID { ____Placeholder_VFE_MESSAGE_ID } VFE_MESSAGE_ID ;
struct TYPE_6__ {scalar_t__ vfeOperationMode; int syncdata; TYPE_2__* resp; } ;
struct TYPE_5__ {int (* vfe_resp ) (struct msm_vfe_resp*,int ,int ) ;struct msm_vfe_resp* (* vfe_alloc ) (int,int ) ;} ;


 int CDBG (char*,...) ;
 int MSM_CAMERA_MSG ;
 int MSM_CAM_Q_VFE_MSG ;
 void* VFE_MSG_GENERAL ;





 void* VFE_MSG_OUTPUT1 ;
 void* VFE_MSG_OUTPUT2 ;
 void* VFE_MSG_SNAPSHOT ;
 void* VFE_MSG_STATS_AF ;
 void* VFE_MSG_STATS_WE ;
 scalar_t__ VFE_START_OPERATION_MODE_SNAPSHOT ;
 TYPE_3__* ctrl ;
 struct msm_vfe_resp* stub1 (int,int ) ;
 int stub2 (struct msm_vfe_resp*,int ,int ) ;
 int vfe_addr_convert (int *,void*,void*,int *,int *) ;

__attribute__((used)) static void
vfe_proc_ops(enum VFE_MESSAGE_ID id, void *msg, size_t len)
{
 struct msm_vfe_resp *rp;




 CDBG("ctrl->vfeOperationMode = %d, msgId = %d\n",
  ctrl->vfeOperationMode, id);

 if ((ctrl->vfeOperationMode == VFE_START_OPERATION_MODE_SNAPSHOT) &&
  (id == 132 || id == 131)) {
  return;
 }

 rp = ctrl->resp->vfe_alloc(sizeof(struct msm_vfe_resp), ctrl->syncdata);
 if (!rp) {
  CDBG("rp: cannot allocate buffer\n");
  return;
 }

 CDBG("vfe_proc_ops, msgId = %d\n", id);

 rp->evt_msg.type = MSM_CAMERA_MSG;
 rp->evt_msg.msg_id = id;
 rp->evt_msg.len = len;
 rp->evt_msg.data = msg;

 switch (rp->evt_msg.msg_id) {
 case 130:
  rp->type = VFE_MSG_SNAPSHOT;
  break;

 case 132:
  rp->type = VFE_MSG_OUTPUT1;
  vfe_addr_convert(&(rp->phy), VFE_MSG_OUTPUT1,
   rp->evt_msg.data, &(rp->extdata),
   &(rp->extlen));
  break;

 case 131:
  rp->type = VFE_MSG_OUTPUT2;
  vfe_addr_convert(&(rp->phy), VFE_MSG_OUTPUT2,
    rp->evt_msg.data, &(rp->extdata),
    &(rp->extlen));
  break;

 case 129:
  rp->type = VFE_MSG_STATS_AF;
  vfe_addr_convert(&(rp->phy), VFE_MSG_STATS_AF,
    rp->evt_msg.data, ((void*)0), ((void*)0));
  break;

 case 128:
  rp->type = VFE_MSG_STATS_WE;
  vfe_addr_convert(&(rp->phy), VFE_MSG_STATS_WE,
    rp->evt_msg.data, ((void*)0), ((void*)0));
  break;

 default:
  rp->type = VFE_MSG_GENERAL;
  break;
 }

 ctrl->resp->vfe_resp(rp, MSM_CAM_Q_VFE_MSG, ctrl->syncdata);
}
