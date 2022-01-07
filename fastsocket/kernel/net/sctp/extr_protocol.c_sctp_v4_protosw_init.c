
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inet_register_protosw (int *) ;
 int proto_register (int *,int) ;
 int sctp_prot ;
 int sctp_seqpacket_protosw ;
 int sctp_stream_protosw ;

__attribute__((used)) static int sctp_v4_protosw_init(void)
{
 int rc;

 rc = proto_register(&sctp_prot, 1);
 if (rc)
  return rc;


 inet_register_protosw(&sctp_seqpacket_protosw);
 inet_register_protosw(&sctp_stream_protosw);

 return 0;
}
