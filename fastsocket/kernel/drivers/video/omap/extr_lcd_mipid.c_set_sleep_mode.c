
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {int dummy; } ;


 int MIPID_CMD_SLEEP_IN ;
 int MIPID_CMD_SLEEP_OUT ;
 int hw_guard_start (struct mipid_device*,int) ;
 int hw_guard_wait (struct mipid_device*) ;
 int mipid_cmd (struct mipid_device*,int) ;
 int msleep (int) ;

__attribute__((used)) static void set_sleep_mode(struct mipid_device *md, int on)
{
 int cmd, sleep_time = 50;

 if (on)
  cmd = MIPID_CMD_SLEEP_IN;
 else
  cmd = MIPID_CMD_SLEEP_OUT;
 hw_guard_wait(md);
 mipid_cmd(md, cmd);
 hw_guard_start(md, 120);






 if (!on)
  sleep_time = 120;
 msleep(sleep_time);
}
