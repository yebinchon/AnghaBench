
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int SIMPLE_TRANSACTION_LIMIT ;
 int * nfsd_serv ;
 int svc_xprt_names (int *,char*,int ) ;

__attribute__((used)) static ssize_t __write_ports_names(char *buf)
{
 if (nfsd_serv == ((void*)0))
  return 0;
 return svc_xprt_names(nfsd_serv, buf, SIMPLE_TRANSACTION_LIMIT);
}
