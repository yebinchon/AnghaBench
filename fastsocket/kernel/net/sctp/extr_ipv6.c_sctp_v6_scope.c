
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6_addr; } ;
union sctp_addr {TYPE_1__ v6; } ;
typedef int sctp_scope_t ;





 int SCTP_SCOPE_GLOBAL ;
 int SCTP_SCOPE_LINK ;
 int SCTP_SCOPE_LOOPBACK ;
 int SCTP_SCOPE_PRIVATE ;
 int ipv6_addr_scope (int *) ;

__attribute__((used)) static sctp_scope_t sctp_v6_scope(union sctp_addr *addr)
{
 int v6scope;
 sctp_scope_t retval;





 v6scope = ipv6_addr_scope(&addr->v6.sin6_addr);
 switch (v6scope) {
 case 130:
  retval = SCTP_SCOPE_LOOPBACK;
  break;
 case 129:
  retval = SCTP_SCOPE_LINK;
  break;
 case 128:
  retval = SCTP_SCOPE_PRIVATE;
  break;
 default:
  retval = SCTP_SCOPE_GLOBAL;
  break;
 }

 return retval;
}
