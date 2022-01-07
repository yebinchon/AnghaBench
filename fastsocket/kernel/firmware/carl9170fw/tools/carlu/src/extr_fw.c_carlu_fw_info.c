
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct carlu {int fw; } ;
struct carl9170fw_motd_desc {int fw_year_month_day; } ;


 int CARL9170FW_GET_DAY (unsigned int) ;
 int CARL9170FW_GET_MONTH (unsigned int) ;
 int CARL9170FW_GET_YEAR (unsigned int) ;
 int CARL9170FW_MOTD_DESC_CUR_VER ;
 scalar_t__ MOTD_MAGIC ;
 struct carl9170fw_motd_desc* carlfw_find_desc (int ,int *,int,int ) ;
 int info (char*,int ,int ,int ) ;
 unsigned int le32_to_cpu (int ) ;

void carlu_fw_info(struct carlu *ar)
{
 struct carl9170fw_motd_desc *motd_desc;
 unsigned int fw_date;

 motd_desc = carlfw_find_desc(ar->fw, (uint8_t *) MOTD_MAGIC,
         sizeof(*motd_desc),
         CARL9170FW_MOTD_DESC_CUR_VER);

 if (motd_desc) {
  fw_date = le32_to_cpu(motd_desc->fw_year_month_day);

  info("Firmware Date: 2%.3d-%.2d-%.2d\n",
       CARL9170FW_GET_YEAR(fw_date), CARL9170FW_GET_MONTH(fw_date),
       CARL9170FW_GET_DAY(fw_date));
 }
}
