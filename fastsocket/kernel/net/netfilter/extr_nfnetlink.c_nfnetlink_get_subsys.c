
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
typedef int u_int16_t ;
struct nfnetlink_subsystem {int dummy; } ;


 size_t NFNL_SUBSYS_COUNT ;
 size_t NFNL_SUBSYS_ID (int ) ;
 struct nfnetlink_subsystem const** subsys_table ;

__attribute__((used)) static inline const struct nfnetlink_subsystem *nfnetlink_get_subsys(u_int16_t type)
{
 u_int8_t subsys_id = NFNL_SUBSYS_ID(type);

 if (subsys_id >= NFNL_SUBSYS_COUNT)
  return ((void*)0);

 return subsys_table[subsys_id];
}
