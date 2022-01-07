
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int packet; } ;
struct sctp_packet {int dummy; } ;
struct sctp_chunk {int dest; TYPE_6__* sctp_hdr; TYPE_4__* chunk_hdr; } ;
struct TYPE_10__ {int init_tag; } ;
struct TYPE_11__ {TYPE_2__ i; } ;
struct sctp_association {TYPE_3__ peer; } ;
struct TYPE_9__ {int init_tag; } ;
struct TYPE_15__ {TYPE_1__ init_hdr; } ;
typedef TYPE_7__ sctp_initack_chunk_t ;
struct TYPE_13__ {int init_tag; } ;
struct TYPE_16__ {TYPE_5__ init_hdr; } ;
typedef TYPE_8__ sctp_init_chunk_t ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_14__ {int vtag; int source; int dest; } ;
struct TYPE_12__ {int type; } ;


 int GFP_ATOMIC ;


 int ntohl (int ) ;
 int ntohs (int ) ;
 int sctp_get_ctl_sock () ;
 struct sctp_packet* sctp_packet_config (struct sctp_packet*,int ,int ) ;
 struct sctp_packet* sctp_packet_init (int *,struct sctp_transport*,int ,int ) ;
 int sctp_sk (int ) ;
 int sctp_source (struct sctp_chunk const*) ;
 struct sctp_transport* sctp_transport_new (int ,int ) ;
 int sctp_transport_route (struct sctp_transport*,union sctp_addr*,int ) ;

__attribute__((used)) static struct sctp_packet *sctp_ootb_pkt_new(const struct sctp_association *asoc,
          const struct sctp_chunk *chunk)
{
 struct sctp_packet *packet;
 struct sctp_transport *transport;
 __u16 sport;
 __u16 dport;
 __u32 vtag;


 sport = ntohs(chunk->sctp_hdr->dest);
 dport = ntohs(chunk->sctp_hdr->source);




 if (asoc) {



  switch(chunk->chunk_hdr->type) {
  case 128:
  {
   sctp_initack_chunk_t *initack;

   initack = (sctp_initack_chunk_t *)chunk->chunk_hdr;
   vtag = ntohl(initack->init_hdr.init_tag);
   break;
  }
  default:
   vtag = asoc->peer.i.init_tag;
   break;
  }
 } else {



  switch(chunk->chunk_hdr->type) {
  case 129:
  {
   sctp_init_chunk_t *init;

   init = (sctp_init_chunk_t *)chunk->chunk_hdr;
   vtag = ntohl(init->init_hdr.init_tag);
   break;
  }
  default:
   vtag = ntohl(chunk->sctp_hdr->vtag);
   break;
  }
 }


 transport = sctp_transport_new(sctp_source(chunk), GFP_ATOMIC);
 if (!transport)
  goto nomem;




 sctp_transport_route(transport, (union sctp_addr *)&chunk->dest,
        sctp_sk(sctp_get_ctl_sock()));

 packet = sctp_packet_init(&transport->packet, transport, sport, dport);
 packet = sctp_packet_config(packet, vtag, 0);

 return packet;

nomem:
 return ((void*)0);
}
