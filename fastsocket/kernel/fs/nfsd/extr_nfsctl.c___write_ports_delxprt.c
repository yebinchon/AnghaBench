
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int dummy; } ;
typedef int ssize_t ;


 int AF_UNSPEC ;
 int EINVAL ;
 int ENOTCONN ;
 int USHORT_MAX ;
 int * nfsd_serv ;
 int sscanf (char*,char*,char*,int*) ;
 int svc_close_xprt (struct svc_xprt*) ;
 struct svc_xprt* svc_find_xprt (int *,char*,int ,int) ;
 int svc_xprt_put (struct svc_xprt*) ;

__attribute__((used)) static ssize_t __write_ports_delxprt(char *buf)
{
 struct svc_xprt *xprt;
 char transport[16];
 int port;

 if (sscanf(&buf[1], "%15s %4u", transport, &port) != 2)
  return -EINVAL;

 if (port < 1 || port > USHORT_MAX || nfsd_serv == ((void*)0))
  return -EINVAL;

 xprt = svc_find_xprt(nfsd_serv, transport, AF_UNSPEC, port);
 if (xprt == ((void*)0))
  return -ENOTCONN;

 svc_close_xprt(xprt);
 svc_xprt_put(xprt);
 return 0;
}
