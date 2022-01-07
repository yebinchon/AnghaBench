
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_service {int dummy; } ;
typedef scalar_t__ __u32 ;
typedef scalar_t__ __u16 ;
typedef scalar_t__ __be16 ;


 scalar_t__ FTPDATA ;
 scalar_t__ FTPPORT ;
 scalar_t__ IPPROTO_TCP ;
 int IP_VS_DBG_ADDR (int,union nf_inet_addr const*) ;
 int IP_VS_DBG_BUF (int,char*,scalar_t__,int ,int ,scalar_t__,char*) ;
 scalar_t__ PROT_SOCK ;
 struct ip_vs_service* __ip_vs_service_get (int,scalar_t__,union nf_inet_addr const*,scalar_t__) ;
 struct ip_vs_service* __ip_vs_svc_fwm_get (int,scalar_t__) ;
 int __ip_vs_svc_lock ;
 scalar_t__ atomic_read (int *) ;
 int ip_vs_ftpsvc_counter ;
 int ip_vs_nullsvc_counter ;
 int ip_vs_proto_name (scalar_t__) ;
 scalar_t__ ntohs (scalar_t__) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct ip_vs_service *
ip_vs_service_get(int af, __u32 fwmark, __u16 protocol,
    const union nf_inet_addr *vaddr, __be16 vport)
{
 struct ip_vs_service *svc;

 read_lock(&__ip_vs_svc_lock);




 if (fwmark && (svc = __ip_vs_svc_fwm_get(af, fwmark)))
  goto out;





 svc = __ip_vs_service_get(af, protocol, vaddr, vport);

 if (svc == ((void*)0)
     && protocol == IPPROTO_TCP
     && atomic_read(&ip_vs_ftpsvc_counter)
     && (vport == FTPDATA || ntohs(vport) >= PROT_SOCK)) {




  svc = __ip_vs_service_get(af, protocol, vaddr, FTPPORT);
 }

 if (svc == ((void*)0)
     && atomic_read(&ip_vs_nullsvc_counter)) {



  svc = __ip_vs_service_get(af, protocol, vaddr, 0);
 }

  out:
 read_unlock(&__ip_vs_svc_lock);

 IP_VS_DBG_BUF(9, "lookup service: fwm %u %s %s:%u %s\n",
        fwmark, ip_vs_proto_name(protocol),
        IP_VS_DBG_ADDR(af, vaddr), ntohs(vport),
        svc ? "hit" : "not hit");

 return svc;
}
