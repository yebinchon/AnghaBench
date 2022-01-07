
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;


 int rpcb_put_local () ;
 int svc_unregister (struct svc_serv*) ;

void svc_rpcb_cleanup(struct svc_serv *serv)
{
 svc_unregister(serv);
 rpcb_put_local();
}
