
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;


 int rpcb_create_local () ;
 int svc_unregister (struct svc_serv*) ;

__attribute__((used)) static int svc_rpcb_setup(struct svc_serv *serv)
{
 int err;

 err = rpcb_create_local();
 if (err)
  return err;


 svc_unregister(serv);
 return 0;
}
