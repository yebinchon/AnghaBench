
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** __wlp_strstate ;

__attribute__((used)) static const char *wlp_wss_strstate(unsigned state)
{
 if (state >= ARRAY_SIZE(__wlp_strstate))
  return "unknown state";
 return __wlp_strstate[state];
}
