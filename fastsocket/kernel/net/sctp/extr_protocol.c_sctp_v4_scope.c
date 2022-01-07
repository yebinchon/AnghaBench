
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
union sctp_addr {TYPE_2__ v4; } ;
typedef int sctp_scope_t ;


 scalar_t__ IS_IPV4_UNUSABLE_ADDRESS (int ) ;
 int SCTP_SCOPE_GLOBAL ;
 int SCTP_SCOPE_LINK ;
 int SCTP_SCOPE_LOOPBACK ;
 int SCTP_SCOPE_PRIVATE ;
 int SCTP_SCOPE_UNUSABLE ;
 scalar_t__ ipv4_is_linklocal_169 (int ) ;
 scalar_t__ ipv4_is_loopback (int ) ;
 scalar_t__ ipv4_is_private_10 (int ) ;
 scalar_t__ ipv4_is_private_172 (int ) ;
 scalar_t__ ipv4_is_private_192 (int ) ;

__attribute__((used)) static sctp_scope_t sctp_v4_scope(union sctp_addr *addr)
{
 sctp_scope_t retval;


 if (IS_IPV4_UNUSABLE_ADDRESS(addr->v4.sin_addr.s_addr)) {
  retval = SCTP_SCOPE_UNUSABLE;
 } else if (ipv4_is_loopback(addr->v4.sin_addr.s_addr)) {
  retval = SCTP_SCOPE_LOOPBACK;
 } else if (ipv4_is_linklocal_169(addr->v4.sin_addr.s_addr)) {
  retval = SCTP_SCOPE_LINK;
 } else if (ipv4_is_private_10(addr->v4.sin_addr.s_addr) ||
     ipv4_is_private_172(addr->v4.sin_addr.s_addr) ||
     ipv4_is_private_192(addr->v4.sin_addr.s_addr)) {
  retval = SCTP_SCOPE_PRIVATE;
 } else {
  retval = SCTP_SCOPE_GLOBAL;
 }

 return retval;
}
