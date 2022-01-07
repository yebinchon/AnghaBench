
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLOW_DIR_FWD ;
 scalar_t__ FLOW_DIR_IN ;
 scalar_t__ FLOW_DIR_OUT ;




__attribute__((used)) static inline int policy_to_flow_dir(int dir)
{
 if (129 == FLOW_DIR_IN &&
     128 == FLOW_DIR_OUT &&
     130 == FLOW_DIR_FWD)
  return dir;
 switch (dir) {
 default:
 case 129:
  return FLOW_DIR_IN;
 case 128:
  return FLOW_DIR_OUT;
 case 130:
  return FLOW_DIR_FWD;
 }
}
