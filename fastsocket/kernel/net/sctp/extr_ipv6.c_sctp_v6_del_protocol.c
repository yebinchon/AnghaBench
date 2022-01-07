
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_SCTP ;
 int inet6_del_protocol (int *,int ) ;
 int sctp_inet6addr_notifier ;
 int sctpv6_protocol ;
 int unregister_inet6addr_notifier (int *) ;

void sctp_v6_del_protocol(void)
{
 inet6_del_protocol(&sctpv6_protocol, IPPROTO_SCTP);
 unregister_inet6addr_notifier(&sctp_inet6addr_notifier);
}
