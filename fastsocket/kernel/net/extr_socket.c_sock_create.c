
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {int net_ns; } ;


 int __sock_create (int ,int,int,int,struct socket**,int ) ;
 TYPE_2__* current ;

int sock_create(int family, int type, int protocol, struct socket **res)
{
 return __sock_create(current->nsproxy->net_ns, family, type, protocol, res, 0);
}
