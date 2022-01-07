
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct carlu {int fw; } ;
struct carl9170fw_otus_desc {int api_ver; int feature_set; } ;


 int CARL9170FW_DUMMY_FEATURE ;
 int CARL9170FW_OTUS_DESC_CUR_VER ;
 int CARL9170FW_UNUSABLE ;
 int EINVAL ;
 int EIO ;
 scalar_t__ OTUS_MAGIC ;
 scalar_t__ carl9170fw_supports (int ,int ) ;
 struct carl9170fw_otus_desc* carlfw_find_desc (int ,int *,int,int ) ;
 int dbg (char*) ;
 int err (char*) ;
 int info (char*,int ) ;

int carlu_fw_check(struct carlu *ar)
{
 struct carl9170fw_otus_desc *otus_desc;

 otus_desc = carlfw_find_desc(ar->fw, (uint8_t *) OTUS_MAGIC,
         sizeof(*otus_desc),
         CARL9170FW_OTUS_DESC_CUR_VER);

 if (!otus_desc) {
  err("No valid OTUS descriptor found.\n");
  return -EINVAL;
 }

 if (!carl9170fw_supports(otus_desc->feature_set, CARL9170FW_DUMMY_FEATURE)) {
  err("Invalid Firmware Descriptor.\n");
  return -EIO;
 }

 if (carl9170fw_supports(otus_desc->feature_set, CARL9170FW_UNUSABLE))
  dbg("Firmware is marked as unuseable.\n");

 info("Firmware Version: %d.\n", otus_desc->api_ver);

 return 0;
}
