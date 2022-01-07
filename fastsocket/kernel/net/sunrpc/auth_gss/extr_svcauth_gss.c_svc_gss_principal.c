
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {scalar_t__ rq_auth_data; } ;
struct gss_svc_data {TYPE_1__* rsci; } ;
struct TYPE_2__ {char* client_name; } ;



char *svc_gss_principal(struct svc_rqst *rqstp)
{
 struct gss_svc_data *gd = (struct gss_svc_data *)rqstp->rq_auth_data;

 if (gd && gd->rsci)
  return gd->rsci->client_name;
 return ((void*)0);
}
