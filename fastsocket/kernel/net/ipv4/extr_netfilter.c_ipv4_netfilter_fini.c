
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_ip_afinfo ;
 int nf_unregister_afinfo (int *) ;

__attribute__((used)) static void ipv4_netfilter_fini(void)
{
 nf_unregister_afinfo(&nf_ip_afinfo);
}
