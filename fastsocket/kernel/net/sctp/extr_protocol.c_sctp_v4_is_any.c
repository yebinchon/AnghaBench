
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
union sctp_addr {TYPE_2__ v4; } ;


 int INADDR_ANY ;
 scalar_t__ htonl (int ) ;

__attribute__((used)) static int sctp_v4_is_any(const union sctp_addr *addr)
{
 return htonl(INADDR_ANY) == addr->v4.sin_addr.s_addr;
}
