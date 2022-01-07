
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_cmd {int dummy; } ;


 int ASCQ_04H_ALUA_TG_PT_STANDBY ;
__attribute__((used)) static inline int core_alua_state_standby(
 struct se_cmd *cmd,
 unsigned char *cdb,
 u8 *alua_ascq)
{




 switch (cdb[0]) {
 case 144:
 case 143:
 case 142:
 case 138:
 case 137:
 case 131:
 case 132:
 case 129:
  return 0;
 case 141:
  switch (cdb[1] & 0x1f) {
  case 139:
   return 0;
  default:
   *alua_ascq = ASCQ_04H_ALUA_TG_PT_STANDBY;
   return 1;
  }
 case 140:
  switch (cdb[1]) {
  case 136:
   return 0;
  default:
   *alua_ascq = ASCQ_04H_ALUA_TG_PT_STANDBY;
   return 1;
  }
 case 130:
 case 135:
 case 134:
 case 133:
 case 128:
  return 0;
 default:
  *alua_ascq = ASCQ_04H_ALUA_TG_PT_STANDBY;
  return 1;
 }

 return 0;
}
