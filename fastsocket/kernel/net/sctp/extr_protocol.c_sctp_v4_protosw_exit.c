
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inet_unregister_protosw (int *) ;
 int proto_unregister (int *) ;
 int sctp_prot ;
 int sctp_seqpacket_protosw ;
 int sctp_stream_protosw ;

__attribute__((used)) static void sctp_v4_protosw_exit(void)
{
 inet_unregister_protosw(&sctp_stream_protosw);
 inet_unregister_protosw(&sctp_seqpacket_protosw);
 proto_unregister(&sctp_prot);
}
