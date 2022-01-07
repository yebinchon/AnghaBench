
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_family; } ;
union sctp_addr {TYPE_1__ sa; } ;
struct sctp_af {int (* scope ) (union sctp_addr*) ;} ;
typedef int sctp_scope_t ;


 int SCTP_SCOPE_UNUSABLE ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 int stub1 (union sctp_addr*) ;

sctp_scope_t sctp_scope(const union sctp_addr *addr)
{
 struct sctp_af *af;

 af = sctp_get_af_specific(addr->sa.sa_family);
 if (!af)
  return SCTP_SCOPE_UNUSABLE;

 return af->scope((union sctp_addr *)addr);
}
