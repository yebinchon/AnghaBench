
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nf_nat_seq {scalar_t__ offset_before; scalar_t__ offset_after; int correction_pos; } ;
struct nf_conn_nat {struct nf_nat_seq* seq; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int CTINFO2DIR (int) ;
 int DUMP_OFFSET (struct nf_nat_seq*) ;
 scalar_t__ before (int ,int ) ;
 int nf_nat_seqofs_lock ;
 struct nf_conn_nat* nfct_nat (struct nf_conn*) ;
 int pr_debug (char*,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void
adjust_tcp_sequence(u32 seq,
      int sizediff,
      struct nf_conn *ct,
      enum ip_conntrack_info ctinfo)
{
 int dir;
 struct nf_nat_seq *this_way, *other_way;
 struct nf_conn_nat *nat = nfct_nat(ct);

 pr_debug("adjust_tcp_sequence: seq = %u, sizediff = %d\n", seq, seq);

 dir = CTINFO2DIR(ctinfo);

 this_way = &nat->seq[dir];
 other_way = &nat->seq[!dir];

 pr_debug("nf_nat_resize_packet: Seq_offset before: ");
 DUMP_OFFSET(this_way);

 spin_lock_bh(&nf_nat_seqofs_lock);





 if (this_way->offset_before == this_way->offset_after ||
     before(this_way->correction_pos, seq)) {
     this_way->correction_pos = seq;
     this_way->offset_before = this_way->offset_after;
     this_way->offset_after += sizediff;
 }
 spin_unlock_bh(&nf_nat_seqofs_lock);

 pr_debug("nf_nat_resize_packet: Seq_offset after: ");
 DUMP_OFFSET(this_way);
}
