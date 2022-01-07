
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sv_permsocks; } ;


 int PF_INET ;
 int SVC_SOCK_DEFAULTS ;
 int init_net ;
 int list_empty (int *) ;
 TYPE_1__* nfsd_serv ;
 int svc_create_xprt (TYPE_1__*,char*,int *,int ,int,int ) ;

__attribute__((used)) static int nfsd_init_socks(int port)
{
 int error;
 if (!list_empty(&nfsd_serv->sv_permsocks))
  return 0;

 error = svc_create_xprt(nfsd_serv, "udp", &init_net, PF_INET, port,
     SVC_SOCK_DEFAULTS);
 if (error < 0)
  return error;

 error = svc_create_xprt(nfsd_serv, "tcp", &init_net, PF_INET, port,
     SVC_SOCK_DEFAULTS);
 if (error < 0)
  return error;

 return 0;
}
