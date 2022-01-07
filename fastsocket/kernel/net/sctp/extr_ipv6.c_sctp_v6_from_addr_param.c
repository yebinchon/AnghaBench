
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
union sctp_addr_param {TYPE_1__ v6; } ;
struct TYPE_4__ {int sin6_scope_id; int sin6_addr; scalar_t__ sin6_flowinfo; int sin6_port; int sin6_family; } ;
union sctp_addr {TYPE_2__ v6; } ;
typedef int __be16 ;


 int AF_INET6 ;
 int ipv6_addr_copy (int *,int *) ;

__attribute__((used)) static void sctp_v6_from_addr_param(union sctp_addr *addr,
        union sctp_addr_param *param,
        __be16 port, int iif)
{
 addr->v6.sin6_family = AF_INET6;
 addr->v6.sin6_port = port;
 addr->v6.sin6_flowinfo = 0;
 ipv6_addr_copy(&addr->v6.sin6_addr, &param->v6.addr);
 addr->v6.sin6_scope_id = iif;
}
