
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
struct carlu {TYPE_1__ eeprom; } ;


 int AR9170_EEPROM_START ;
 int BUILD_BUG_ON (int) ;
 int ENODATA ;
 int carlu_cmd_mem_dump (struct carlu*,int ,int,TYPE_1__*) ;
 scalar_t__ cpu_to_le16 (int) ;

int carlu_cmd_read_eeprom(struct carlu *ar)
{

 int err;

 err = carlu_cmd_mem_dump(ar, AR9170_EEPROM_START, sizeof(ar->eeprom),
      &ar->eeprom);



 BUILD_BUG_ON(sizeof(ar->eeprom) % 8);


 if (ar->eeprom.length == cpu_to_le16(0xffff))
  return -ENODATA;

 return 0;
}
