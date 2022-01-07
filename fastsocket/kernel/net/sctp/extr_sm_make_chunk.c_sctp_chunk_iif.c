
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {int skb; } ;
struct sctp_af {int (* skb_iif ) (int ) ;} ;
struct TYPE_2__ {int version; } ;


 TYPE_1__* ip_hdr (int ) ;
 int ipver2af (int ) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 int stub1 (int ) ;

int sctp_chunk_iif(const struct sctp_chunk *chunk)
{
 struct sctp_af *af;
 int iif = 0;

 af = sctp_get_af_specific(ipver2af(ip_hdr(chunk->skb)->version));
 if (af)
  iif = af->skb_iif(chunk->skb);

 return iif;
}
