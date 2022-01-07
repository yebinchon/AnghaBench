
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {TYPE_1__ sin_addr; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct TYPE_6__ {int freebind; } ;
struct sctp_sock {TYPE_3__ inet; } ;


 int INADDR_ANY ;
 int RTN_LOCAL ;
 scalar_t__ htonl (int ) ;
 int inet_addr_type (int *,scalar_t__) ;
 int init_net ;
 scalar_t__ ipv6_only_sock (int ) ;
 int sctp_opt2sk (struct sctp_sock*) ;
 int sysctl_ip_nonlocal_bind ;

__attribute__((used)) static int sctp_v4_available(union sctp_addr *addr, struct sctp_sock *sp)
{
 int ret = inet_addr_type(&init_net, addr->v4.sin_addr.s_addr);


 if (addr->v4.sin_addr.s_addr != htonl(INADDR_ANY) &&
    ret != RTN_LOCAL &&
    !sp->inet.freebind &&
    !sysctl_ip_nonlocal_bind)
  return 0;

 if (ipv6_only_sock(sctp_opt2sk(sp)))
  return 0;

 return 1;
}
