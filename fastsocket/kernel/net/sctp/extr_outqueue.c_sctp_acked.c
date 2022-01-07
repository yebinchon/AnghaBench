
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_sackhdr {int num_gap_ack_blocks; TYPE_2__* variable; int cum_tsn_ack; } ;
struct TYPE_3__ {int end; int start; } ;
struct TYPE_4__ {TYPE_1__ gab; } ;
typedef TYPE_2__ sctp_sack_variable_t ;
typedef int __u32 ;
typedef int __u16 ;


 scalar_t__ TSN_lte (int,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int sctp_acked(struct sctp_sackhdr *sack, __u32 tsn)
{
 int i;
 sctp_sack_variable_t *frags;
 __u16 gap;
 __u32 ctsn = ntohl(sack->cum_tsn_ack);

 if (TSN_lte(tsn, ctsn))
  goto pass;
 frags = sack->variable;
 gap = tsn - ctsn;
 for (i = 0; i < ntohs(sack->num_gap_ack_blocks); ++i) {
  if (TSN_lte(ntohs(frags[i].gab.start), gap) &&
      TSN_lte(gap, ntohs(frags[i].gab.end)))
   goto pass;
 }

 return 0;
pass:
 return 1;
}
