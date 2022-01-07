
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6_addr; } ;
union sctp_addr {TYPE_1__ v6; } ;


 int ipv6_addr_diff (int *,int *) ;

__attribute__((used)) static inline int sctp_v6_addr_match_len(union sctp_addr *s1,
      union sctp_addr *s2)
{
 return ipv6_addr_diff(&s1->v6.sin6_addr, &s2->v6.sin6_addr);
}
