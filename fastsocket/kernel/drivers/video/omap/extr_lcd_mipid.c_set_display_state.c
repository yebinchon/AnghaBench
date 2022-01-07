
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {int dummy; } ;


 int MIPID_CMD_DISP_OFF ;
 int MIPID_CMD_DISP_ON ;
 int mipid_cmd (struct mipid_device*,int) ;

__attribute__((used)) static void set_display_state(struct mipid_device *md, int enabled)
{
 int cmd = enabled ? MIPID_CMD_DISP_ON : MIPID_CMD_DISP_OFF;

 mipid_cmd(md, cmd);
}
