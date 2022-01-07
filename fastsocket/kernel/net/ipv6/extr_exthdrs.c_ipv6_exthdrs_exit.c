
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_DSTOPTS ;
 int IPPROTO_NONE ;
 int IPPROTO_ROUTING ;
 int destopt_protocol ;
 int inet6_del_protocol (int *,int ) ;
 int nodata_protocol ;
 int rthdr_protocol ;

void ipv6_exthdrs_exit(void)
{
 inet6_del_protocol(&nodata_protocol, IPPROTO_NONE);
 inet6_del_protocol(&destopt_protocol, IPPROTO_DSTOPTS);
 inet6_del_protocol(&rthdr_protocol, IPPROTO_ROUTING);
}
