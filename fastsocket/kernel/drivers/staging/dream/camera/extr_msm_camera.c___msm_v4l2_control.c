
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_sync {int dummy; } ;
struct msm_queue_cmd {struct msm_ctrl_cmd* command; int type; } ;
struct msm_ctrl_cmd {scalar_t__ length; int value; int timeout_ms; } ;
struct msm_control_device_queue {int dummy; } ;


 int BUG_ON (int) ;
 int CDBG (char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct msm_queue_cmd*) ;
 int MSM_CAM_Q_V4L2_REQ ;
 int PTR_ERR (struct msm_queue_cmd*) ;
 struct msm_queue_cmd* __msm_control (struct msm_sync*,struct msm_control_device_queue*,struct msm_queue_cmd*,int ) ;
 int kfree (struct msm_queue_cmd*) ;
 struct msm_queue_cmd* kmalloc (int,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int pr_err (char*) ;

__attribute__((used)) static int __msm_v4l2_control(struct msm_sync *sync,
  struct msm_ctrl_cmd *out)
{
 int rc = 0;

 struct msm_queue_cmd *qcmd = ((void*)0), *rcmd = ((void*)0);
 struct msm_ctrl_cmd *ctrl;
 struct msm_control_device_queue FIXME;


 qcmd = kmalloc(sizeof(struct msm_queue_cmd), GFP_KERNEL);
 if (!qcmd) {
  pr_err("msm_control: cannot allocate buffer\n");
  rc = -ENOMEM;
  goto end;
 }
 qcmd->type = MSM_CAM_Q_V4L2_REQ;
 qcmd->command = out;

 rcmd = __msm_control(sync, &FIXME, qcmd, out->timeout_ms);
 if (IS_ERR(rcmd)) {
  rc = PTR_ERR(rcmd);
  goto end;
 }

 ctrl = (struct msm_ctrl_cmd *)(rcmd->command);

 BUG_ON(out->length < ctrl->length);
 memcpy(out->value, ctrl->value, ctrl->length);

end:
 if (rcmd) kfree(rcmd);
 CDBG("__msm_v4l2_control: end rc = %d\n", rc);
 return rc;
}
