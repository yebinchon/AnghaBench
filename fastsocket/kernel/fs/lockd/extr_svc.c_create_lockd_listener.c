
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int dummy; } ;
struct svc_serv {int dummy; } ;


 int SVC_SOCK_DEFAULTS ;
 int init_net ;
 int svc_create_xprt (struct svc_serv*,char const*,int *,int const,unsigned short const,int ) ;
 struct svc_xprt* svc_find_xprt (struct svc_serv*,char const*,int const,int ) ;
 int svc_xprt_put (struct svc_xprt*) ;

__attribute__((used)) static int create_lockd_listener(struct svc_serv *serv, const char *name,
     const int family, const unsigned short port)
{
 struct svc_xprt *xprt;

 xprt = svc_find_xprt(serv, name, family, 0);
 if (xprt == ((void*)0))
  return svc_create_xprt(serv, name, &init_net, family, port,
      SVC_SOCK_DEFAULTS);
 svc_xprt_put(xprt);
 return 0;
}
