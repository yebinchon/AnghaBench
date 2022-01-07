
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
typedef scalar_t__ sctp_scope_t ;


 scalar_t__ SCTP_SCOPE_LINK ;




 scalar_t__ SCTP_SCOPE_PRIVATE ;
 scalar_t__ SCTP_SCOPE_UNUSABLE ;
 scalar_t__ sctp_scope (union sctp_addr const*) ;
 int sctp_scope_policy ;

int sctp_in_scope(const union sctp_addr *addr, sctp_scope_t scope)
{
 sctp_scope_t addr_scope = sctp_scope(addr);




 if (SCTP_SCOPE_UNUSABLE == addr_scope)
  return 0;
 switch (sctp_scope_policy) {
 case 131:
  return 1;
 case 130:
  if (addr_scope <= scope)
   return 1;
  break;
 case 128:
  if (addr_scope <= scope || SCTP_SCOPE_PRIVATE == addr_scope)
   return 1;
  break;
 case 129:
  if (addr_scope <= scope || SCTP_SCOPE_LINK == addr_scope)
   return 1;
  break;
 default:
  break;
 }

 return 0;
}
