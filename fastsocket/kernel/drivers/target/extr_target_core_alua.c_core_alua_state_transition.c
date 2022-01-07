
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_cmd {int dummy; } ;


 int ASCQ_04H_ALUA_STATE_TRANSITION ;
__attribute__((used)) static inline int core_alua_state_transition(
 struct se_cmd *cmd,
 unsigned char *cdb,
 u8 *alua_ascq)
{




 switch (cdb[0]) {
 case 134:
 case 130:
  return 0;
 case 133:
  switch (cdb[1] & 0x1f) {
  case 132:
   return 0;
  default:
   *alua_ascq = ASCQ_04H_ALUA_STATE_TRANSITION;
   return 1;
  }
 case 129:
 case 131:
 case 128:
  return 0;
 default:
  *alua_ascq = ASCQ_04H_ALUA_STATE_TRANSITION;
  return 1;
 }

 return 0;
}
