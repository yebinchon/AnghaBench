
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union sctp_addr_param {int dummy; } sctp_addr_param ;
struct TYPE_3__ {int sin_family; } ;
union sctp_addr {TYPE_1__ v4; } ;
struct sctp_packet {int dummy; } ;
struct sctp_errhdr {int length; int cause; scalar_t__ variable; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_af {int (* to_addr_param ) (union sctp_addr*,union sctp_addr_param*) ;} ;
typedef int sctp_errhdr_t ;
typedef int sctp_cmd_seq_t ;
struct TYPE_4__ {struct sctp_endpoint* ep; } ;


 int SCTP_CMD_DISCARD_PACKET ;
 int SCTP_CMD_SEND_PKT ;
 int SCTP_ERROR_RESTART ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_NULL () ;
 int SCTP_PACKET (struct sctp_packet*) ;
 int htons (int) ;
 struct sctp_packet* sctp_abort_pkt_new (struct sctp_endpoint*,int *,struct sctp_chunk*,struct sctp_errhdr*,int) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 int sctp_get_ctl_sock () ;
 TYPE_2__* sctp_sk (int ) ;
 int stub1 (union sctp_addr*,union sctp_addr_param*) ;

__attribute__((used)) static int sctp_sf_send_restart_abort(union sctp_addr *ssa,
          struct sctp_chunk *init,
          sctp_cmd_seq_t *commands)
{
 int len;
 struct sctp_packet *pkt;
 union sctp_addr_param *addrparm;
 struct sctp_errhdr *errhdr;
 struct sctp_endpoint *ep;
 char buffer[sizeof(struct sctp_errhdr)+sizeof(union sctp_addr_param)];
 struct sctp_af *af = sctp_get_af_specific(ssa->v4.sin_family);




 errhdr = (struct sctp_errhdr *)buffer;
 addrparm = (union sctp_addr_param *)errhdr->variable;


 len = af->to_addr_param(ssa, addrparm);
 len += sizeof(sctp_errhdr_t);

 errhdr->cause = SCTP_ERROR_RESTART;
 errhdr->length = htons(len);


 ep = sctp_sk((sctp_get_ctl_sock()))->ep;




 pkt = sctp_abort_pkt_new(ep, ((void*)0), init, errhdr, len);

 if (!pkt)
  goto out;
 sctp_add_cmd_sf(commands, SCTP_CMD_SEND_PKT, SCTP_PACKET(pkt));

 SCTP_INC_STATS(SCTP_MIB_OUTCTRLCHUNKS);


 sctp_add_cmd_sf(commands, SCTP_CMD_DISCARD_PACKET, SCTP_NULL());

out:



 return 0;
}
