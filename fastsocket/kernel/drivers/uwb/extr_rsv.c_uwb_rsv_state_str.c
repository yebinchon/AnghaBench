
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum uwb_rsv_state { ____Placeholder_uwb_rsv_state } uwb_rsv_state ;


 int UWB_RSV_STATE_LAST ;
 int UWB_RSV_STATE_NONE ;
 char const** rsv_states ;

const char *uwb_rsv_state_str(enum uwb_rsv_state state)
{
 if (state < UWB_RSV_STATE_NONE || state >= UWB_RSV_STATE_LAST)
  return "unknown";
 return rsv_states[state];
}
