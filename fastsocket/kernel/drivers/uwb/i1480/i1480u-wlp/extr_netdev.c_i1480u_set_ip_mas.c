
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_6__ {int bEventType; void* wEvent; } ;
struct uwb_rc_evt_confirm {scalar_t__ bResultCode; TYPE_3__ rceb; } ;
struct TYPE_4__ {int dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_dev_addr {int dummy; } ;
struct TYPE_5__ {int bCommandType; void* wCommand; } ;
struct i1480u_cmd_set_ip_mas {TYPE_2__ rccb; int baMAS; void* type; void* owner; void* stream; struct uwb_dev_addr addr; } ;
typedef int reply ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ UWB_RC_RES_FAIL ;
 void* cpu_to_le16 (int) ;
 int dev_err (int *,char*,scalar_t__) ;
 int kfree (struct i1480u_cmd_set_ip_mas*) ;
 struct i1480u_cmd_set_ip_mas* kzalloc (int,int ) ;
 int memcpy (int ,unsigned long*,int) ;
 int memset (int ,int,int) ;
 int uwb_rc_cmd (struct uwb_rc*,char*,TYPE_2__*,int,TYPE_3__*,int) ;

__attribute__((used)) static
int i1480u_set_ip_mas(
 struct uwb_rc *rc,
 const struct uwb_dev_addr *dstaddr,
 u8 stream, u8 owner, u8 type, unsigned long *mas)
{

 int result;
 struct i1480u_cmd_set_ip_mas *cmd;
 struct uwb_rc_evt_confirm reply;

 result = -ENOMEM;
 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  goto error_kzalloc;
 cmd->rccb.bCommandType = 0xfd;
 cmd->rccb.wCommand = cpu_to_le16(0x000e);
 cmd->addr = *dstaddr;
 cmd->stream = stream;
 cmd->owner = owner;
 cmd->type = type;
 if (mas == ((void*)0))
  memset(cmd->baMAS, 0x00, sizeof(cmd->baMAS));
 else
  memcpy(cmd->baMAS, mas, sizeof(cmd->baMAS));
 reply.rceb.bEventType = 0xfd;
 reply.rceb.wEvent = cpu_to_le16(0x000e);
 result = uwb_rc_cmd(rc, "SET-IP-MAS", &cmd->rccb, sizeof(*cmd),
       &reply.rceb, sizeof(reply));
 if (result < 0)
  goto error_cmd;
 if (reply.bResultCode != UWB_RC_RES_FAIL) {
  dev_err(&rc->uwb_dev.dev,
   "SET-IP-MAS: command execution failed: %d\n",
   reply.bResultCode);
  result = -EIO;
 }
error_cmd:
 kfree(cmd);
error_kzalloc:
 return result;
}
