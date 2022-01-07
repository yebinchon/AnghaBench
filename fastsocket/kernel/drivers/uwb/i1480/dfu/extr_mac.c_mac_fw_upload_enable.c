
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i1480 {int hw_rev; int (* read ) (struct i1480*,int,int) ;int (* write ) (struct i1480*,int,int*,int) ;int dev; scalar_t__ cmd_buf; } ;


 int dev_err (int ,char*,int) ;
 int i1480_FW_UPLOAD_MODE_MASK ;
 int stub1 (struct i1480*,int,int) ;
 int stub2 (struct i1480*,int,int*,int) ;

__attribute__((used)) static
int mac_fw_upload_enable(struct i1480 *i1480)
{
 int result;
 u32 reg = 0x800000c0;
 u32 *buffer = (u32 *)i1480->cmd_buf;

 if (i1480->hw_rev > 1)
  reg = 0x8000d0d4;
 result = i1480->read(i1480, reg, sizeof(u32));
 if (result < 0)
  goto error_cmd;
 *buffer &= ~i1480_FW_UPLOAD_MODE_MASK;
 result = i1480->write(i1480, reg, buffer, sizeof(u32));
 if (result < 0)
  goto error_cmd;
 return 0;
error_cmd:
 dev_err(i1480->dev, "can't enable fw upload mode: %d\n", result);
 return result;
}
