
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_family; } ;
union sctp_addr {TYPE_1__ sa; } ;
struct sctp_af {int (* cmp_addr ) (union sctp_addr const*,union sctp_addr const*) ;} ;


 struct sctp_af* sctp_get_af_specific (int ) ;
 int stub1 (union sctp_addr const*,union sctp_addr const*) ;
 scalar_t__ unlikely (int) ;

int sctp_cmp_addr_exact(const union sctp_addr *ss1,
   const union sctp_addr *ss2)
{
 struct sctp_af *af;

 af = sctp_get_af_specific(ss1->sa.sa_family);
 if (unlikely(!af))
  return 0;

 return af->cmp_addr(ss1, ss2);
}
