
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inet6_unregister_protosw (int *) ;
 int proto_unregister (int *) ;
 int sctpv6_prot ;
 int sctpv6_seqpacket_protosw ;
 int sctpv6_stream_protosw ;

void sctp_v6_protosw_exit(void)
{
 inet6_unregister_protosw(&sctpv6_seqpacket_protosw);
 inet6_unregister_protosw(&sctpv6_stream_protosw);
 proto_unregister(&sctpv6_prot);
}
