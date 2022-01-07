
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct svc_xprt {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {int sv_nrthreads; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int PF_INET ;
 int PF_INET6 ;
 int SVC_SOCK_ANONYMOUS ;
 int USHORT_MAX ;
 int init_net ;
 int nfsd_create_serv () ;
 TYPE_1__* nfsd_serv ;
 int sscanf (char*,char*,char*,int*) ;
 int svc_close_xprt (struct svc_xprt*) ;
 int svc_create_xprt (TYPE_1__*,char*,int *,int ,int,int ) ;
 int svc_destroy (TYPE_1__*) ;
 struct svc_xprt* svc_find_xprt (TYPE_1__*,char*,int ,int) ;
 int svc_xprt_put (struct svc_xprt*) ;

__attribute__((used)) static ssize_t __write_ports_addxprt(char *buf)
{
 char transport[16];
 struct svc_xprt *xprt;
 int port, err;

 if (sscanf(buf, "%15s %4u", transport, &port) != 2)
  return -EINVAL;

 if (port < 1 || port > USHORT_MAX)
  return -EINVAL;

 err = nfsd_create_serv();
 if (err != 0)
  return err;

 err = svc_create_xprt(nfsd_serv, transport, &init_net,
    PF_INET, port, SVC_SOCK_ANONYMOUS);
 if (err < 0)
  goto out_err;

 err = svc_create_xprt(nfsd_serv, transport, &init_net,
    PF_INET6, port, SVC_SOCK_ANONYMOUS);
 if (err < 0 && err != -EAFNOSUPPORT)
  goto out_close;


 nfsd_serv->sv_nrthreads--;
 return 0;
out_close:
 xprt = svc_find_xprt(nfsd_serv, transport, PF_INET, port);
 if (xprt != ((void*)0)) {
  svc_close_xprt(xprt);
  svc_xprt_put(xprt);
 }
out_err:
 svc_destroy(nfsd_serv);
 return err;
}
