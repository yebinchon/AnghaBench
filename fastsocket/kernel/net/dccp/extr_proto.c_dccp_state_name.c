
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const DCCP_MAX_STATES ;
const char *dccp_state_name(const int state)
{
 static const char *const dccp_state_names[] = {
 [134] = "OPEN",
 [130] = "REQUESTING",
 [133] = "PARTOPEN",
 [135] = "LISTEN",
 [129] = "RESPOND",
 [136] = "CLOSING",
 [138] = "CLOSEREQ",
 [132] = "PASSIVE_CLOSE",
 [131] = "PASSIVE_CLOSEREQ",
 [128] = "TIME_WAIT",
 [137] = "CLOSED",
 };

 if (state >= DCCP_MAX_STATES)
  return "INVALID STATE!";
 else
  return dccp_state_names[state];
}
