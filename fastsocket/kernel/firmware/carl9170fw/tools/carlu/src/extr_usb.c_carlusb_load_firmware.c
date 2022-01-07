
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int fw; } ;


 int CARL9170_FIRMWARE_FILE ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (int ) ;
 int carlfw_load (int ) ;
 int carlu_fw_check (struct carlu*) ;
 int carlusb_fw_check (struct carlu*) ;
 int dbg (char*) ;

__attribute__((used)) static int carlusb_load_firmware(struct carlu *ar)
{
 int ret = 0;

 dbg("loading firmware...\n");

 ar->fw = carlfw_load(CARL9170_FIRMWARE_FILE);
 if (IS_ERR_OR_NULL(ar->fw))
  return PTR_ERR(ar->fw);

 ret = carlu_fw_check(ar);
 if (ret)
  return ret;

 ret = carlusb_fw_check(ar);
 if (ret)
  return ret;

 return 0;
}
