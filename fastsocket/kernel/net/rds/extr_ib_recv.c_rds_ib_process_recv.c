
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rds_ib_recv_work {TYPE_3__* r_frag; struct rds_ib_incoming* r_ibinc; } ;
struct rds_header {scalar_t__ h_ack; scalar_t__ h_sport; scalar_t__ h_dport; scalar_t__ h_len; int h_flags; scalar_t__ h_sequence; scalar_t__ h_credit; } ;
struct TYPE_4__ {struct rds_header i_hdr; } ;
struct rds_ib_incoming {TYPE_1__ ii_inc; int ii_frags; } ;
struct rds_ib_connection {struct rds_ib_incoming* i_ibinc; struct rds_ib_recv_work* i_recv_data_rem; struct rds_ib_recv_work* i_recvs; struct rds_header* i_recv_hdrs; } ;
struct rds_ib_ack_state {int ack_recv_valid; int ack_next_valid; int ack_required; void* ack_next; void* ack_recv; } ;
struct rds_connection {int c_laddr; int c_faddr; struct rds_ib_connection* c_transport_data; } ;
struct TYPE_5__ {int f_item; } ;


 int GFP_ATOMIC ;
 int KM_SOFTIRQ0 ;
 int RDS_FLAG_ACK_REQUIRED ;
 scalar_t__ RDS_FLAG_CONG_BITMAP ;
 struct rds_ib_recv_work* RDS_FRAG_SIZE ;
 struct rds_ib_recv_work* be32_to_cpu (scalar_t__) ;
 void* be64_to_cpu (scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int memcpy (struct rds_header*,struct rds_header*,int) ;
 int rds_ib_cong_recv (struct rds_connection*,struct rds_ib_incoming*) ;
 int rds_ib_conn_error (struct rds_connection*,char*,...) ;
 int rds_ib_frag_free (struct rds_ib_connection*,TYPE_3__*) ;
 int rds_ib_send_add_credits (struct rds_connection*,scalar_t__) ;
 int rds_ib_stats_inc (int ) ;
 int rds_inc_put (TYPE_1__*) ;
 int rds_message_verify_checksum (struct rds_header*) ;
 int rds_recv_incoming (struct rds_connection*,int ,int ,TYPE_1__*,int ,int ) ;
 int rds_stats_inc (int ) ;
 int rdsdebug (char*,struct rds_ib_connection*,struct rds_ib_incoming*,struct rds_ib_recv_work*,int) ;
 int s_ib_ack_received ;
 int s_recv_ack_required ;
 int s_recv_drop_bad_checksum ;

__attribute__((used)) static void rds_ib_process_recv(struct rds_connection *conn,
    struct rds_ib_recv_work *recv, u32 data_len,
    struct rds_ib_ack_state *state)
{
 struct rds_ib_connection *ic = conn->c_transport_data;
 struct rds_ib_incoming *ibinc = ic->i_ibinc;
 struct rds_header *ihdr, *hdr;



 rdsdebug("ic %p ibinc %p recv %p byte len %u\n", ic, ibinc, recv,
   data_len);

 if (data_len < sizeof(struct rds_header)) {
  rds_ib_conn_error(conn, "incoming message "
         "from %pI4 didn't include a "
         "header, disconnecting and "
         "reconnecting\n",
         &conn->c_faddr);
  return;
 }
 data_len -= sizeof(struct rds_header);

 ihdr = &ic->i_recv_hdrs[recv - ic->i_recvs];


 if (!rds_message_verify_checksum(ihdr)) {
  rds_ib_conn_error(conn, "incoming message "
         "from %pI4 has corrupted header - "
         "forcing a reconnect\n",
         &conn->c_faddr);
  rds_stats_inc(s_recv_drop_bad_checksum);
  return;
 }


 state->ack_recv = be64_to_cpu(ihdr->h_ack);
 state->ack_recv_valid = 1;


 if (ihdr->h_credit)
  rds_ib_send_add_credits(conn, ihdr->h_credit);

 if (ihdr->h_sport == 0 && ihdr->h_dport == 0 && data_len == 0) {




  rds_ib_stats_inc(s_ib_ack_received);
  rds_ib_frag_free(ic, recv->r_frag);
  recv->r_frag = ((void*)0);
  return;
 }







 if (!ibinc) {
  ibinc = recv->r_ibinc;
  recv->r_ibinc = ((void*)0);
  ic->i_ibinc = ibinc;

  hdr = &ibinc->ii_inc.i_hdr;
  memcpy(hdr, ihdr, sizeof(*hdr));
  ic->i_recv_data_rem = be32_to_cpu(hdr->h_len);

  rdsdebug("ic %p ibinc %p rem %u flag 0x%x\n", ic, ibinc,
    ic->i_recv_data_rem, hdr->h_flags);
 } else {
  hdr = &ibinc->ii_inc.i_hdr;


  if (hdr->h_sequence != ihdr->h_sequence
   || hdr->h_len != ihdr->h_len
   || hdr->h_sport != ihdr->h_sport
   || hdr->h_dport != ihdr->h_dport) {
   rds_ib_conn_error(conn,
    "fragment header mismatch; forcing reconnect\n");
   return;
  }
 }

 list_add_tail(&recv->r_frag->f_item, &ibinc->ii_frags);
 recv->r_frag = ((void*)0);

 if (ic->i_recv_data_rem > RDS_FRAG_SIZE)
  ic->i_recv_data_rem -= RDS_FRAG_SIZE;
 else {
  ic->i_recv_data_rem = 0;
  ic->i_ibinc = ((void*)0);

  if (ibinc->ii_inc.i_hdr.h_flags == RDS_FLAG_CONG_BITMAP)
   rds_ib_cong_recv(conn, ibinc);
  else {
   rds_recv_incoming(conn, conn->c_faddr, conn->c_laddr,
       &ibinc->ii_inc, GFP_ATOMIC,
       KM_SOFTIRQ0);
   state->ack_next = be64_to_cpu(hdr->h_sequence);
   state->ack_next_valid = 1;
  }




  if (hdr->h_flags & RDS_FLAG_ACK_REQUIRED) {
   rds_stats_inc(s_recv_ack_required);
   state->ack_required = 1;
  }

  rds_inc_put(&ibinc->ii_inc);
 }
}
