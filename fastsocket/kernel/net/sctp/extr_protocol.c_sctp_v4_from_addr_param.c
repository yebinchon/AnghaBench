
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int s_addr; } ;
struct TYPE_8__ {TYPE_3__ addr; } ;
union sctp_addr_param {TYPE_4__ v4; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
union sctp_addr {TYPE_2__ v4; } ;
typedef int __be16 ;


 int AF_INET ;

__attribute__((used)) static void sctp_v4_from_addr_param(union sctp_addr *addr,
        union sctp_addr_param *param,
        __be16 port, int iif)
{
 addr->v4.sin_family = AF_INET;
 addr->v4.sin_port = port;
 addr->v4.sin_addr.s_addr = param->v4.addr.s_addr;
}
