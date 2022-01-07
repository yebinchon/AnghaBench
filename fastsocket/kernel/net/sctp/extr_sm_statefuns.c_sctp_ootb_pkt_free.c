
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_packet {int transport; } ;


 int sctp_transport_free (int ) ;

void sctp_ootb_pkt_free(struct sctp_packet *packet)
{
 sctp_transport_free(packet->transport);
}
