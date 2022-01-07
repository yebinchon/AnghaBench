
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int dummy; } ;
struct carl9170_cmd {int dummy; } ;


 int CARL9170_CMD_REBOOT_ASYNC ;
 int ENOMEM ;
 scalar_t__ IS_ERR_OR_NULL (struct carl9170_cmd*) ;
 int PTR_ERR (struct carl9170_cmd*) ;
 struct carl9170_cmd* carlu_cmd_buf (struct carlu*,int ,int ) ;
 int carlusb_cmd_async (struct carlu*,struct carl9170_cmd*,int) ;

int carlu_cmd_reboot(struct carlu *ar)
{
 struct carl9170_cmd *reboot;
 int err;


 reboot = carlu_cmd_buf(ar, CARL9170_CMD_REBOOT_ASYNC, 0);
 if (IS_ERR_OR_NULL(reboot))
  return reboot ? PTR_ERR(reboot) : -ENOMEM;

 err = carlusb_cmd_async(ar, reboot, 1);
 return err;
}
