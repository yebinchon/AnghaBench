
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_4__ {unsigned int nl_nonroot; } ;
struct TYPE_3__ {size_t sk_protocol; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ capable (int ) ;
 TYPE_2__* nl_table ;

__attribute__((used)) static inline int netlink_capable(struct socket *sock, unsigned int flag)
{
 return (nl_table[sock->sk->sk_protocol].nl_nonroot & flag) ||
        capable(CAP_NET_ADMIN);
}
