
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
typedef int SVCXPRT ;


 scalar_t__ svc_getcaller (int *) ;

struct sockaddr_in *
amu_svc_getcaller(SVCXPRT *xprt)
{

  return (struct sockaddr_in *) svc_getcaller(xprt);
}
