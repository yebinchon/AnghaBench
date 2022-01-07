
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nf_nat_seq {int offset_before; int offset_after; int correction_pos; } ;
struct nf_conn_nat {struct nf_nat_seq* seq; } ;
struct nf_conn {int dummy; } ;
typedef int s16 ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;


 scalar_t__ after (int ,int ) ;
 int nf_nat_seqofs_lock ;
 struct nf_conn_nat* nfct_nat (struct nf_conn const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

s16 nf_nat_get_offset(const struct nf_conn *ct,
        enum ip_conntrack_dir dir,
        u32 seq)
{
 struct nf_conn_nat *nat = nfct_nat(ct);
 struct nf_nat_seq *this_way;
 s16 offset;

 if (!nat)
  return 0;

 this_way = &nat->seq[dir];
 spin_lock_bh(&nf_nat_seqofs_lock);
 offset = after(seq, this_way->correction_pos)
   ? this_way->offset_after : this_way->offset_before;
 spin_unlock_bh(&nf_nat_seqofs_lock);

 return offset;
}
