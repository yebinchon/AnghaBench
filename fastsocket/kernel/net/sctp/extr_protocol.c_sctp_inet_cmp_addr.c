
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {TYPE_3__ sin_addr; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_2__ v4; TYPE_1__ sa; } ;
struct sctp_sock {int dummy; } ;


 int INADDR_ANY ;
 scalar_t__ htonl (int ) ;

__attribute__((used)) static int sctp_inet_cmp_addr(const union sctp_addr *addr1,
         const union sctp_addr *addr2,
         struct sctp_sock *opt)
{

 if (addr1->sa.sa_family != addr2->sa.sa_family)
  return 0;
 if (htonl(INADDR_ANY) == addr1->v4.sin_addr.s_addr ||
     htonl(INADDR_ANY) == addr2->v4.sin_addr.s_addr)
  return 1;
 if (addr1->v4.sin_addr.s_addr == addr2->v4.sin_addr.s_addr)
  return 1;

 return 0;
}
