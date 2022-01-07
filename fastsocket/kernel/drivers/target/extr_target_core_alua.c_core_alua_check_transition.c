
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sense_reason_t ;







 int TCM_INVALID_PARAMETER_LIST ;
 int pr_err (char*,int) ;

__attribute__((used)) static sense_reason_t
core_alua_check_transition(int state, int *primary)
{
 switch (state) {
 case 131:
 case 132:
 case 129:
 case 128:




  *primary = 1;
  break;
 case 130:




  *primary = 0;
  break;
 default:
  pr_err("Unknown ALUA access state: 0x%02x\n", state);
  return TCM_INVALID_PARAMETER_LIST;
 }

 return 0;
}
