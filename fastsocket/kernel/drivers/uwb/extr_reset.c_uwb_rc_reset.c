
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uwb_rccb {int wCommand; void* bCommandType; } ;
struct TYPE_4__ {int wEvent; void* bEventType; } ;
struct uwb_rc_evt_confirm {scalar_t__ bResultCode; TYPE_2__ rceb; } ;
struct TYPE_3__ {int mutex; int dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
typedef int reply ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* UWB_RC_CET_GENERAL ;
 int UWB_RC_CMD_RESET ;
 scalar_t__ UWB_RC_RES_SUCCESS ;
 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int ,scalar_t__) ;
 int kfree (struct uwb_rccb*) ;
 struct uwb_rccb* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_rc_cmd (struct uwb_rc*,char*,struct uwb_rccb*,size_t,TYPE_2__*,int) ;
 int uwb_rc_strerror (scalar_t__) ;

int uwb_rc_reset(struct uwb_rc *rc)
{
 int result = -ENOMEM;
 struct uwb_rc_evt_confirm reply;
 struct uwb_rccb *cmd;
 size_t cmd_size = sizeof(*cmd);

 mutex_lock(&rc->uwb_dev.mutex);
 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  goto error_kzalloc;
 cmd->bCommandType = UWB_RC_CET_GENERAL;
 cmd->wCommand = cpu_to_le16(UWB_RC_CMD_RESET);
 reply.rceb.bEventType = UWB_RC_CET_GENERAL;
 reply.rceb.wEvent = UWB_RC_CMD_RESET;
 result = uwb_rc_cmd(rc, "RESET", cmd, cmd_size,
       &reply.rceb, sizeof(reply));
 if (result < 0)
  goto error_cmd;
 if (reply.bResultCode != UWB_RC_RES_SUCCESS) {
  dev_err(&rc->uwb_dev.dev,
   "RESET: command execution failed: %s (%d)\n",
   uwb_rc_strerror(reply.bResultCode), reply.bResultCode);
  result = -EIO;
 }
error_cmd:
 kfree(cmd);
error_kzalloc:
 mutex_unlock(&rc->uwb_dev.mutex);
 return result;
}
