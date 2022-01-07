
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i1480 {int pre_fw_name; } ;


 int __mac_fw_upload (struct i1480*,int ,char*) ;
 int msleep (int) ;

int i1480_pre_fw_upload(struct i1480 *i1480)
{
 int result;
 result = __mac_fw_upload(i1480, i1480->pre_fw_name, "PRE");
 if (result == 0)
  msleep(400);
 return result;
}
