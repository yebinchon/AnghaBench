
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ip_vs_flags {int mask; int flags; } ;
struct ip_vs_service_user_kern {int flags; void* netmask; void* timeout; int * pe_name; int * sched_name; void* port; struct ip_vs_flags addr; void* protocol; void* af; void* fwmark; } ;
struct ip_vs_service {int flags; } ;
typedef int flags ;


 void* AF_INET ;
 void* AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 void* IPPROTO_TCP ;
 size_t IPVS_SVC_ATTR_ADDR ;
 size_t IPVS_SVC_ATTR_AF ;
 size_t IPVS_SVC_ATTR_FLAGS ;
 size_t IPVS_SVC_ATTR_FWMARK ;
 int IPVS_SVC_ATTR_MAX ;
 size_t IPVS_SVC_ATTR_NETMASK ;
 size_t IPVS_SVC_ATTR_PE_NAME ;
 size_t IPVS_SVC_ATTR_PORT ;
 size_t IPVS_SVC_ATTR_PROTOCOL ;
 size_t IPVS_SVC_ATTR_SCHED_NAME ;
 size_t IPVS_SVC_ATTR_TIMEOUT ;
 struct ip_vs_service* __ip_vs_service_get (void*,void*,struct ip_vs_flags*,void*) ;
 struct ip_vs_service* __ip_vs_svc_fwm_get (void*,void*) ;
 int ip_vs_service_put (struct ip_vs_service*) ;
 int ip_vs_svc_policy ;
 int memset (struct ip_vs_service_user_kern*,int ,int) ;
 int * nla_data (struct nlattr*) ;
 void* nla_get_u16 (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_memcpy (struct ip_vs_flags*,struct nlattr*,int) ;
 scalar_t__ nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;

__attribute__((used)) static int ip_vs_genl_parse_service(struct ip_vs_service_user_kern *usvc,
        struct nlattr *nla, int full_entry)
{
 struct nlattr *attrs[IPVS_SVC_ATTR_MAX + 1];
 struct nlattr *nla_af, *nla_port, *nla_fwmark, *nla_protocol, *nla_addr;


 if (nla == ((void*)0) ||
     nla_parse_nested(attrs, IPVS_SVC_ATTR_MAX, nla, ip_vs_svc_policy))
  return -EINVAL;

 nla_af = attrs[IPVS_SVC_ATTR_AF];
 nla_protocol = attrs[IPVS_SVC_ATTR_PROTOCOL];
 nla_addr = attrs[IPVS_SVC_ATTR_ADDR];
 nla_port = attrs[IPVS_SVC_ATTR_PORT];
 nla_fwmark = attrs[IPVS_SVC_ATTR_FWMARK];

 if (!(nla_af && (nla_fwmark || (nla_port && nla_protocol && nla_addr))))
  return -EINVAL;

 memset(usvc, 0, sizeof(*usvc));

 usvc->af = nla_get_u16(nla_af);



 if (usvc->af != AF_INET)

  return -EAFNOSUPPORT;

 if (nla_fwmark) {
  usvc->protocol = IPPROTO_TCP;
  usvc->fwmark = nla_get_u32(nla_fwmark);
 } else {
  usvc->protocol = nla_get_u16(nla_protocol);
  nla_memcpy(&usvc->addr, nla_addr, sizeof(usvc->addr));
  usvc->port = nla_get_u16(nla_port);
  usvc->fwmark = 0;
 }


 if (full_entry) {
  struct nlattr *nla_sched, *nla_flags, *nla_pe, *nla_timeout,
         *nla_netmask;
  struct ip_vs_flags flags;
  struct ip_vs_service *svc;

  nla_sched = attrs[IPVS_SVC_ATTR_SCHED_NAME];
  nla_pe = attrs[IPVS_SVC_ATTR_PE_NAME];
  nla_flags = attrs[IPVS_SVC_ATTR_FLAGS];
  nla_timeout = attrs[IPVS_SVC_ATTR_TIMEOUT];
  nla_netmask = attrs[IPVS_SVC_ATTR_NETMASK];

  if (!(nla_sched && nla_flags && nla_timeout && nla_netmask))
   return -EINVAL;

  nla_memcpy(&flags, nla_flags, sizeof(flags));


  if (usvc->fwmark)
   svc = __ip_vs_svc_fwm_get(usvc->af, usvc->fwmark);
  else
   svc = __ip_vs_service_get(usvc->af, usvc->protocol,
        &usvc->addr, usvc->port);
  if (svc) {
   usvc->flags = svc->flags;
   ip_vs_service_put(svc);
  } else
   usvc->flags = 0;


  usvc->flags = (usvc->flags & ~flags.mask) |
         (flags.flags & flags.mask);
  usvc->sched_name = nla_data(nla_sched);
  usvc->pe_name = nla_pe ? nla_data(nla_pe) : ((void*)0);
  usvc->timeout = nla_get_u32(nla_timeout);
  usvc->netmask = nla_get_u32(nla_netmask);
 }

 return 0;
}
