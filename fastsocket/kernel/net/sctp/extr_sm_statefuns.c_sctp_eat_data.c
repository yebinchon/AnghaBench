
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sock {TYPE_5__* sk_prot_creator; } ;
struct sctp_tsnmap {int dummy; } ;
struct TYPE_21__ {TYPE_11__* data_hdr; } ;
struct sctp_chunk {int ecn_ce_done; int data_accepted; TYPE_8__* asoc; TYPE_6__* chunk_hdr; TYPE_12__* skb; TYPE_2__ subh; } ;
struct TYPE_28__ {scalar_t__ sinit_max_instreams; } ;
struct TYPE_23__ {int pd_mode; } ;
struct TYPE_22__ {int tsn_map; scalar_t__ ecn_capable; } ;
struct TYPE_20__ {struct sock* sk; } ;
struct sctp_association {size_t rwnd; size_t frag_point; TYPE_10__* ssnmap; TYPE_9__ c; scalar_t__ rwnd_over; TYPE_4__ ulpq; TYPE_3__ peer; TYPE_1__ base; } ;
struct sctp_af {scalar_t__ (* is_ce ) (TYPE_12__*) ;} ;
typedef int sctp_verb_t ;
struct TYPE_17__ {int ssn; int stream; int tsn; } ;
typedef TYPE_11__ sctp_datahdr_t ;
typedef int sctp_data_chunk_t ;
typedef int sctp_cmd_seq_t ;
typedef scalar_t__ __u32 ;
struct TYPE_26__ {int iodchunks; int iuodchunks; int outofseqtsns; } ;
struct TYPE_27__ {TYPE_7__ stats; } ;
struct TYPE_25__ {int flags; int length; } ;
struct TYPE_24__ {scalar_t__* memory_pressure; } ;
struct TYPE_19__ {int version; } ;
struct TYPE_18__ {scalar_t__ data; } ;
struct TYPE_16__ {int in; } ;


 int ECONNABORTED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_CHUNK_ULP ;
 int SCTP_CMD_DISCARD_PACKET ;
 int SCTP_CMD_ECN_CE ;
 int SCTP_CMD_PART_DELIVER ;
 int SCTP_CMD_RENEGE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_REPORT_DUP ;
 int SCTP_CMD_REPORT_TSN ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_DATA_UNORDERED ;
 int SCTP_DEBUG_PRINTK (char*,scalar_t__,...) ;
 int SCTP_DEC_STATS (int ) ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_INV_STRM ;
 int SCTP_ERROR_NO_DATA ;
 int SCTP_IERROR_BAD_STREAM ;
 int SCTP_IERROR_DUP_TSN ;
 int SCTP_IERROR_HIGH_TSN ;
 int SCTP_IERROR_IGNORE_TSN ;
 int SCTP_IERROR_NO_DATA ;
 int SCTP_IERROR_NO_ERROR ;
 int SCTP_IERROR_PROTO_VIOLATION ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_INORDERCHUNKS ;
 int SCTP_MIB_INUNORDERCHUNKS ;
 int SCTP_NULL () ;
 int SCTP_PERR (int ) ;
 int SCTP_U32 (scalar_t__) ;
 scalar_t__ SSN_lt (scalar_t__,int ) ;
 TYPE_14__* ip_hdr (TYPE_12__*) ;
 int ipver2af (int ) ;
 scalar_t__ ntohl (int ) ;
 void* ntohs (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 struct sctp_chunk* sctp_make_abort_no_data (struct sctp_association const*,struct sctp_chunk*,scalar_t__) ;
 struct sctp_chunk* sctp_make_op_error (struct sctp_association const*,struct sctp_chunk*,int ,int *,int,int) ;
 int sctp_ssn_peek (int *,scalar_t__) ;
 int sctp_tsnmap_check (int *,scalar_t__) ;
 scalar_t__ sctp_tsnmap_get_ctsn (struct sctp_tsnmap*) ;
 scalar_t__ sctp_tsnmap_has_gap (struct sctp_tsnmap*) ;
 int skb_pull (TYPE_12__*,int) ;
 scalar_t__ stub1 (TYPE_12__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sctp_eat_data(const struct sctp_association *asoc,
    struct sctp_chunk *chunk,
    sctp_cmd_seq_t *commands)
{
 sctp_datahdr_t *data_hdr;
 struct sctp_chunk *err;
 size_t datalen;
 sctp_verb_t deliver;
 int tmp;
 __u32 tsn;
 struct sctp_tsnmap *map = (struct sctp_tsnmap *)&asoc->peer.tsn_map;
 struct sock *sk = asoc->base.sk;
 u16 ssn;
 u16 sid;
 u8 ordered = 0;

 data_hdr = chunk->subh.data_hdr = (sctp_datahdr_t *)chunk->skb->data;
 skb_pull(chunk->skb, sizeof(sctp_datahdr_t));

 tsn = ntohl(data_hdr->tsn);
 SCTP_DEBUG_PRINTK("eat_data: TSN 0x%x.\n", tsn);
 if (!chunk->ecn_ce_done) {
  struct sctp_af *af;
  chunk->ecn_ce_done = 1;

  af = sctp_get_af_specific(
   ipver2af(ip_hdr(chunk->skb)->version));

  if (af && af->is_ce(chunk->skb) && asoc->peer.ecn_capable) {

   sctp_add_cmd_sf(commands, SCTP_CMD_ECN_CE,
     SCTP_U32(tsn));
  }
 }

 tmp = sctp_tsnmap_check(&asoc->peer.tsn_map, tsn);
 if (tmp < 0) {



  if (chunk->asoc)
   chunk->asoc->stats.outofseqtsns++;
  return SCTP_IERROR_HIGH_TSN;
 } else if (tmp > 0) {

  sctp_add_cmd_sf(commands, SCTP_CMD_REPORT_DUP, SCTP_U32(tsn));
  return SCTP_IERROR_DUP_TSN;
 }






 datalen = ntohs(chunk->chunk_hdr->length);
 datalen -= sizeof(sctp_data_chunk_t);

 deliver = SCTP_CMD_CHUNK_ULP;


 if ((datalen >= asoc->rwnd) && (!asoc->ulpq.pd_mode)) {




  sctp_add_cmd_sf(commands, SCTP_CMD_PART_DELIVER, SCTP_NULL());
 }






 if ((!chunk->data_accepted) && (!asoc->rwnd || asoc->rwnd_over ||
     (datalen > asoc->rwnd + asoc->frag_point))) {







  if (sctp_tsnmap_has_gap(map) &&
      (sctp_tsnmap_get_ctsn(map) + 1) == tsn) {
   SCTP_DEBUG_PRINTK("Reneging for tsn:%u\n", tsn);
   deliver = SCTP_CMD_RENEGE;
  } else {
   SCTP_DEBUG_PRINTK("Discard tsn: %u len: %Zd, "
       "rwnd: %d\n", tsn, datalen,
       asoc->rwnd);
   return SCTP_IERROR_IGNORE_TSN;
  }
 }
 if (*sk->sk_prot_creator->memory_pressure) {
  if (sctp_tsnmap_has_gap(map) &&
            (sctp_tsnmap_get_ctsn(map) + 1) == tsn) {
   SCTP_DEBUG_PRINTK("Under Pressure! Reneging for tsn:%u\n", tsn);
   deliver = SCTP_CMD_RENEGE;
   }
 }
 if (unlikely(0 == datalen)) {
  err = sctp_make_abort_no_data(asoc, chunk, tsn);
  if (err) {
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(err));
  }



  sctp_add_cmd_sf(commands, SCTP_CMD_DISCARD_PACKET,SCTP_NULL());
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ECONNABORTED));
  sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
    SCTP_PERR(SCTP_ERROR_NO_DATA));
  SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
  SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);
  return SCTP_IERROR_NO_DATA;
 }

 chunk->data_accepted = 1;




 if (chunk->chunk_hdr->flags & SCTP_DATA_UNORDERED) {
  SCTP_INC_STATS(SCTP_MIB_INUNORDERCHUNKS);
  if (chunk->asoc)
   chunk->asoc->stats.iuodchunks++;
 } else {
  SCTP_INC_STATS(SCTP_MIB_INORDERCHUNKS);
  if (chunk->asoc)
   chunk->asoc->stats.iodchunks++;
  ordered = 1;
 }
 sid = ntohs(data_hdr->stream);
 if (sid >= asoc->c.sinit_max_instreams) {

  sctp_add_cmd_sf(commands, SCTP_CMD_REPORT_TSN, SCTP_U32(tsn));

  err = sctp_make_op_error(asoc, chunk, SCTP_ERROR_INV_STRM,
      &data_hdr->stream,
      sizeof(data_hdr->stream),
      sizeof(u16));
  if (err)
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(err));
  return SCTP_IERROR_BAD_STREAM;
 }
 ssn = ntohs(data_hdr->ssn);
 if (ordered && SSN_lt(ssn, sctp_ssn_peek(&asoc->ssnmap->in, sid))) {
  return SCTP_IERROR_PROTO_VIOLATION;
 }





 sctp_add_cmd_sf(commands, deliver, SCTP_CHUNK(chunk));

 return SCTP_IERROR_NO_ERROR;
}
