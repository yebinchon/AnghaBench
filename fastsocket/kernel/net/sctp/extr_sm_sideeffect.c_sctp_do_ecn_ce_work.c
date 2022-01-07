
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_association {int need_ecne; int last_ecne_tsn; } ;
typedef int __u32 ;



__attribute__((used)) static void sctp_do_ecn_ce_work(struct sctp_association *asoc,
    __u32 lowest_tsn)
{


 asoc->last_ecne_tsn = lowest_tsn;
 asoc->need_ecne = 1;
}
