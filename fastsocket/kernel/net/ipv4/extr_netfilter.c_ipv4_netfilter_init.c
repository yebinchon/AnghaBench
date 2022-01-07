
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_ip_afinfo ;
 int nf_register_afinfo (int *) ;

__attribute__((used)) static int ipv4_netfilter_init(void)
{
 return nf_register_afinfo(&nf_ip_afinfo);
}
