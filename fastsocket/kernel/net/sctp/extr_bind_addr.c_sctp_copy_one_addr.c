
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_1__ sa; } ;
struct sctp_bind_addr {int dummy; } ;
typedef int sctp_scope_t ;
typedef int gfp_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int SCTP_ADDR4_PEERSUPP ;
 int SCTP_ADDR6_ALLOWED ;
 int SCTP_ADDR6_PEERSUPP ;
 int SCTP_ADDR_SRC ;
 int sctp_add_bind_addr (struct sctp_bind_addr*,union sctp_addr*,int ,int ) ;
 int sctp_copy_local_addr_list (struct sctp_bind_addr*,int ,int ,int) ;
 scalar_t__ sctp_in_scope (union sctp_addr*,int ) ;
 scalar_t__ sctp_is_any (int *,union sctp_addr*) ;

__attribute__((used)) static int sctp_copy_one_addr(struct sctp_bind_addr *dest,
         union sctp_addr *addr,
         sctp_scope_t scope, gfp_t gfp,
         int flags)
{
 int error = 0;

 if (sctp_is_any(((void*)0), addr)) {
  error = sctp_copy_local_addr_list(dest, scope, gfp, flags);
 } else if (sctp_in_scope(addr, scope)) {




  if ((((AF_INET == addr->sa.sa_family) &&
        (flags & SCTP_ADDR4_PEERSUPP))) ||
      (((AF_INET6 == addr->sa.sa_family) &&
        (flags & SCTP_ADDR6_ALLOWED) &&
        (flags & SCTP_ADDR6_PEERSUPP))))
   error = sctp_add_bind_addr(dest, addr, SCTP_ADDR_SRC,
          gfp);
 }

 return error;
}
