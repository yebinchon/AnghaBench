
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int type; } ;
struct TYPE_5__ {int addr; TYPE_1__ param_hdr; } ;
union sctp_addr_param {TYPE_2__ v6; } ;
struct TYPE_6__ {int sin6_addr; } ;
union sctp_addr {TYPE_3__ v6; } ;
typedef int sctp_ipv6addr_param_t ;


 int SCTP_PARAM_IPV6_ADDRESS ;
 int htons (int) ;
 int ipv6_addr_copy (int *,int *) ;

__attribute__((used)) static int sctp_v6_to_addr_param(const union sctp_addr *addr,
     union sctp_addr_param *param)
{
 int length = sizeof(sctp_ipv6addr_param_t);

 param->v6.param_hdr.type = SCTP_PARAM_IPV6_ADDRESS;
 param->v6.param_hdr.length = htons(length);
 ipv6_addr_copy(&param->v6.addr, &addr->v6.sin6_addr);

 return length;
}
