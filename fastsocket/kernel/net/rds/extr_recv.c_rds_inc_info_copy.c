
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_info_message {int fport; int lport; void* faddr; void* laddr; int len; int seq; } ;
struct rds_info_iterator {int dummy; } ;
struct TYPE_2__ {int h_dport; int h_sport; int h_len; int h_sequence; } ;
struct rds_incoming {TYPE_1__ i_hdr; } ;
typedef int minfo ;
typedef void* __be32 ;


 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int rds_info_copy (struct rds_info_iterator*,struct rds_info_message*,int) ;

void rds_inc_info_copy(struct rds_incoming *inc,
         struct rds_info_iterator *iter,
         __be32 saddr, __be32 daddr, int flip)
{
 struct rds_info_message minfo;

 minfo.seq = be64_to_cpu(inc->i_hdr.h_sequence);
 minfo.len = be32_to_cpu(inc->i_hdr.h_len);

 if (flip) {
  minfo.laddr = daddr;
  minfo.faddr = saddr;
  minfo.lport = inc->i_hdr.h_dport;
  minfo.fport = inc->i_hdr.h_sport;
 } else {
  minfo.laddr = saddr;
  minfo.faddr = daddr;
  minfo.lport = inc->i_hdr.h_sport;
  minfo.fport = inc->i_hdr.h_dport;
 }

 rds_info_copy(iter, &minfo, sizeof(minfo));
}
