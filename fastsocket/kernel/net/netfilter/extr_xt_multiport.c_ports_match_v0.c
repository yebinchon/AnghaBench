
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int8_t ;
typedef scalar_t__ const u_int16_t ;
typedef enum xt_multiport_flags { ____Placeholder_xt_multiport_flags } xt_multiport_flags ;


 int XT_MULTIPORT_DESTINATION ;
 int XT_MULTIPORT_SOURCE ;

__attribute__((used)) static inline bool
ports_match_v0(const u_int16_t *portlist, enum xt_multiport_flags flags,
        u_int8_t count, u_int16_t src, u_int16_t dst)
{
 unsigned int i;
 for (i = 0; i < count; i++) {
  if (flags != XT_MULTIPORT_DESTINATION && portlist[i] == src)
   return 1;

  if (flags != XT_MULTIPORT_SOURCE && portlist[i] == dst)
   return 1;
 }

 return 0;
}
