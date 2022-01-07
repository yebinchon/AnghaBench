
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_xprt_class {TYPE_1__* xcl_ops; } ;
struct svc_xprt {int dummy; } ;
struct svc_serv {int dummy; } ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; int sin6_family; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_2__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct net {int dummy; } ;
typedef int sin6 ;
typedef int sin ;
struct TYPE_3__ {struct svc_xprt* (* xpo_create ) (struct svc_serv*,struct net*,struct sockaddr*,size_t,int) ;} ;


 int AF_INET ;
 int AF_INET6 ;
 int EAFNOSUPPORT ;
 struct svc_xprt* ERR_PTR (int ) ;
 int IN6ADDR_ANY_INIT ;
 int INADDR_ANY ;


 int htonl (int ) ;
 int htons (unsigned short const) ;
 struct svc_xprt* stub1 (struct svc_serv*,struct net*,struct sockaddr*,size_t,int) ;

__attribute__((used)) static struct svc_xprt *__svc_xpo_create(struct svc_xprt_class *xcl,
      struct svc_serv *serv,
      struct net *net,
      const int family,
      const unsigned short port,
      int flags)
{
 struct sockaddr_in sin = {
  .sin_family = AF_INET,
  .sin_addr.s_addr = htonl(INADDR_ANY),
  .sin_port = htons(port),
 };







 struct sockaddr *sap;
 size_t len;

 switch (family) {
 case 129:
  sap = (struct sockaddr *)&sin;
  len = sizeof(sin);
  break;






 default:
  return ERR_PTR(-EAFNOSUPPORT);
 }

 return xcl->xcl_ops->xpo_create(serv, net, sap, len, flags);
}
