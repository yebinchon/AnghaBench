
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_1__ sa; } ;
struct sctp_sock {scalar_t__ v4mapped; } ;


 scalar_t__ AF_INET ;
 int sctp_v4_map_v6 (union sctp_addr*) ;

__attribute__((used)) static void sctp_v6_addr_v4map(struct sctp_sock *sp, union sctp_addr *addr)
{
 if (sp->v4mapped && AF_INET == addr->sa.sa_family)
  sctp_v4_map_v6(addr);
}
