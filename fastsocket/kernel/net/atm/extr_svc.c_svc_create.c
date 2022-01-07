
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int * ops; } ;
struct net {int dummy; } ;
struct TYPE_5__ {void* sas_family; } ;
struct TYPE_4__ {void* sas_family; } ;
struct TYPE_6__ {TYPE_2__ remote; TYPE_1__ local; } ;


 void* AF_ATMSVC ;
 TYPE_3__* ATM_SD (struct socket*) ;
 int EAFNOSUPPORT ;
 struct net init_net ;
 int svc_proto_ops ;
 int vcc_create (struct net*,struct socket*,int,void*) ;

__attribute__((used)) static int svc_create(struct net *net, struct socket *sock, int protocol,
        int kern)
{
 int error;

 if (net != &init_net)
  return -EAFNOSUPPORT;

 sock->ops = &svc_proto_ops;
 error = vcc_create(net, sock, protocol, AF_ATMSVC);
 if (error) return error;
 ATM_SD(sock)->local.sas_family = AF_ATMSVC;
 ATM_SD(sock)->remote.sas_family = AF_ATMSVC;
 return 0;
}
