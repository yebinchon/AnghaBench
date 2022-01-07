
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** __wlp_wss_connect_state ;

__attribute__((used)) static const char *wlp_wss_connect_state_str(unsigned id)
{
 if (id >= ARRAY_SIZE(__wlp_wss_connect_state))
  return "unknown WSS connection state";
 return __wlp_wss_connect_state[id];
}
