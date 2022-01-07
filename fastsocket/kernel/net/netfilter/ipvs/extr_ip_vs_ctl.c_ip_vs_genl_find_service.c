
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ip_vs_service_user_kern {int port; int addr; int protocol; int af; scalar_t__ fwmark; } ;
struct ip_vs_service {int dummy; } ;


 struct ip_vs_service* ERR_PTR (int) ;
 struct ip_vs_service* __ip_vs_service_get (int ,int ,int *,int ) ;
 struct ip_vs_service* __ip_vs_svc_fwm_get (int ,scalar_t__) ;
 int ip_vs_genl_parse_service (struct ip_vs_service_user_kern*,struct nlattr*,int ) ;

__attribute__((used)) static struct ip_vs_service *ip_vs_genl_find_service(struct nlattr *nla)
{
 struct ip_vs_service_user_kern usvc;
 int ret;

 ret = ip_vs_genl_parse_service(&usvc, nla, 0);
 if (ret)
  return ERR_PTR(ret);

 if (usvc.fwmark)
  return __ip_vs_svc_fwm_get(usvc.af, usvc.fwmark);
 else
  return __ip_vs_service_get(usvc.af, usvc.protocol,
        &usvc.addr, usvc.port);
}
