
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;


 char* __svc_print_addr (int ,char*,size_t) ;
 int svc_addr (struct svc_rqst*) ;

char *svc_print_addr(struct svc_rqst *rqstp, char *buf, size_t len)
{
 return __svc_print_addr(svc_addr(rqstp), buf, len);
}
